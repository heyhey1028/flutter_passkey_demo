import { onCall, HttpsError } from 'firebase-functions/v2/https';
import * as admin from 'firebase-admin';
import { verifyRegistrationResponse } from '@simplewebauthn/server';
import {
  FinishPasskeyRegistrationRequest,
  FinishPasskeyRegistrationResponse,
  StoredCredential,
} from '../types';

const db = admin.firestore();

export const finishPasskeyRegistration = onCall({
  region: 'asia-northeast2',
}, async (request) => {
  const { userId, attestationResponse } = request.data as FinishPasskeyRegistrationRequest;

  // チャレンジを取得
  const challengeDoc = await db.collection('challenges').doc(userId).get();
  if (!challengeDoc.exists) {
    throw new HttpsError('failed-precondition', 'Challenge not found');
  }

  const expectedChallenge = challengeDoc.data()?.challenge;

  try {
    const verification = await verifyRegistrationResponse({
      response: attestationResponse,
      expectedChallenge,
      expectedOrigin: 'http://localhost:3000',
      expectedRPID: 'localhost',
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
        message: 'パスキーの登録が完了しました。',
      };
      return response;
    }
  } catch (error) {
    console.error('Verification failed:', error);
  }

  throw new HttpsError('internal', 'Registration verification failed');
}); 