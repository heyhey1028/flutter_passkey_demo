import { onCall, HttpsError } from 'firebase-functions/v2/https';
import * as admin from 'firebase-admin';
import { verifyAuthenticationResponse } from '@simplewebauthn/server';
import {
  FinishPasskeyAuthenticationRequest,
  FinishPasskeyAuthenticationResponse,
  StoredCredential,
} from '../types';

const db = admin.firestore();

export const finishPasskeyAuthentication = onCall({
  region: 'asia-northeast2',
}, async (request) => {
  const { userId, attestationResponse } = request.data as FinishPasskeyAuthenticationRequest;

  // チャレンジを取得
  const challengeDoc = await db.collection('challenges').doc(userId).get();
  if (!challengeDoc.exists) {
    throw new HttpsError('failed-precondition', 'Challenge not found');
  }

  const expectedChallenge = challengeDoc.data()?.challenge;

  // クレデンシャルを取得
  const credentialDoc = await db.collection('credentials').doc(userId).get();
  if (!credentialDoc.exists) {
    throw new HttpsError('failed-precondition', 'Credential not found');
  }

  const credential = credentialDoc.data() as StoredCredential;

  try {
    // 認証レスポンスをverifyAuthenticationResponseで検証
    const verification = await verifyAuthenticationResponse({
      response: attestationResponse,
      expectedChallenge,
      expectedOrigin: 'http://localhost:3000',
      expectedRPID: 'localhost',
      credential: {
        id: new Uint8Array(Buffer.from(credential.credentialID, 'base64url')),
        publicKey: new Uint8Array(Buffer.from(credential.credentialPublicKey, 'base64url')),
        counter: credential.counter,
      } as any,
    });

    if (verification.verified) {
      // カウンターを更新
      await db.collection('credentials').doc(userId).update({
        counter: verification.authenticationInfo.newCounter,
      });

      // チャレンジを削除
      await db.collection('challenges').doc(userId).delete();

      // Firebaseカスタムトークンの生成
      const customToken = await admin.auth().createCustomToken(userId);

      const response: FinishPasskeyAuthenticationResponse = {
        status: 'success',
        message: '認証成功',
        firebaseToken: customToken,
      };
      return response;
    }
  } catch (error) {
    console.error('Verification failed:', error);
  }

  throw new HttpsError('internal', 'Authentication verification failed');
}); 