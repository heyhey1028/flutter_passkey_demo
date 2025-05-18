import { onCall, HttpsError } from 'firebase-functions/v2/https';
import * as admin from 'firebase-admin';
import { verifyRegistrationResponse } from '@simplewebauthn/server';
import * as functions from 'firebase-functions';
import {
  FinishPasskeyRegistrationRequest,
  FinishPasskeyRegistrationResponse,
  StoredCredential,
} from '../types';

const db = admin.firestore();
const RP_ID = functions.config().rp_id;
const ORIGIN_IOS = functions.config().origin_ios;
const ORIGIN_ANDROID = functions.config().origin_android;
const ORIGIN_WEB = functions.config().origin_web;

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