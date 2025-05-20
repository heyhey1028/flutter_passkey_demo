import { onCall, HttpsError } from 'firebase-functions/v2/https';
import { verifyRegistrationResponse } from '@simplewebauthn/server';
import { db } from '../firebase-admin';
import {
  FinishPasskeyRegistrationRequest,
  FinishPasskeyRegistrationResponse,
  StoredCredential,
} from '../types';

const RP_ID = process.env.RP_ID || 'example.com';
const ORIGIN_IOS = process.env.ORIGIN_IOS || 'ios:com.example.app';
const ORIGIN_ANDROID = process.env.ORIGIN_ANDROID || 'android:SHA256:00:11:22:33:44:55:66:77:88:99:AA:BB:CC:DD:EE:FF:00:11:22:33:44:55:66:77:88:99:AA:BB:CC:DD:EE:FF';
const ORIGIN_WEB = process.env.ORIGIN_WEB || 'https://example.com';


export const finishPasskeyRegistration = onCall({
  region: 'asia-northeast2',
}, async (request) => {
  const { userId, attestationResponse, platform } = request.data as FinishPasskeyRegistrationRequest;

  // チャレンジを取得
  const challengeDoc = await db.collection('challenges').doc(userId).get();
  if (!challengeDoc.exists) {
    throw new HttpsError('failed-precondition', 'Challenge not found');
  }

  const expectedChallenge = challengeDoc.data()?.challenge;

  try {
    // プラットフォームに応じたOriginを選択
    let expectedOrigin = ORIGIN_WEB;
    if (platform === 'ios') {
      expectedOrigin = ORIGIN_IOS;
    } else if (platform === 'android') {
      expectedOrigin = ORIGIN_ANDROID;
    }

    const verification = await verifyRegistrationResponse({
      response: attestationResponse,
      expectedChallenge,
      expectedOrigin,
      expectedRPID: RP_ID,
    });

    if (verification.verified && verification.registrationInfo) {
      const credential: StoredCredential = {
        credentialID: Buffer.from(verification.registrationInfo.credential.id).toString('base64url'),
        credentialPublicKey: Buffer.from(verification.registrationInfo.credential.publicKey).toString('base64url'),
        counter: verification.registrationInfo.credential.counter,
      };

      // クレデンシャルを保存
      await db.collection('credentials').doc(userId).set(credential);

      // チャレンジを削除
      await db.collection('challenges').doc(userId).delete();

      const response: FinishPasskeyRegistrationResponse = {
        status: 'success',
        message: 'Passkey registration completed.',
      };
      return response;
    }
  } catch (error) {
    console.error('Verification failed:', error);
  }

  throw new HttpsError('internal', 'Registration verification failed');
}); 