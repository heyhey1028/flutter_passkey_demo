import { onCall, HttpsError } from 'firebase-functions/v2/https';
import * as admin from 'firebase-admin';
import { verifyAuthenticationResponse } from '@simplewebauthn/server';
import * as functions from 'firebase-functions';
import {
  FinishPasskeyAuthenticationRequest,
  FinishPasskeyAuthenticationResponse,
  StoredCredential,
} from '../types';

const db = admin.firestore();
const RP_ID = functions.config().rp_id;
const ORIGIN_IOS = functions.config().origin_ios;
const ORIGIN_ANDROID = functions.config().origin_android;
const ORIGIN_WEB = functions.config().origin_web;

export const finishPasskeyAuthentication = onCall({
  region: 'asia-northeast2',
}, async (request) => {
  const { attestationResponse, platform, challengeId } = request.data as FinishPasskeyAuthenticationRequest;

  // チャレンジを取得
  const challengeDoc = await db.collection('challenges').doc(challengeId).get();
  if (!challengeDoc.exists) {
    throw new HttpsError('failed-precondition', 'Challenge not found');
  }

  const expectedChallenge = challengeDoc.data()?.challenge;

  // クレデンシャルIDからユーザーを特定
  const credentialId = attestationResponse.id;
  const credentialsSnapshot = await db.collection('credentials')
    .where('credentialID', '==', credentialId)
    .limit(1)
    .get();

  if (credentialsSnapshot.empty) {
    throw new HttpsError('failed-precondition', 'Credential not found');
  }

  const credentialDoc = credentialsSnapshot.docs[0];
  const userId = credentialDoc.id;
  const credential = credentialDoc.data() as StoredCredential;

  try {
    // プラットフォームに応じたOriginを選択
    let expectedOrigin = ORIGIN_WEB;
    if (platform === 'ios') {
      expectedOrigin = ORIGIN_IOS;
    } else if (platform === 'android') {
      expectedOrigin = ORIGIN_ANDROID;
    }

    const verification = await verifyAuthenticationResponse({
      response: attestationResponse,
      expectedChallenge,
      expectedOrigin,
      expectedRPID: RP_ID,
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
      await db.collection('challenges').doc(challengeId).delete();

      // Firebaseカスタムトークンの生成
      const customToken = await admin.auth().createCustomToken(userId);

      const response: FinishPasskeyAuthenticationResponse = {
        status: 'success',
        message: 'Passkey Authentication completed.',
        firebaseToken: customToken,
      };
      return response;
    }
  } catch (error) {
    console.error('Verification failed:', error);
  }

  throw new HttpsError('internal', 'Authentication verification failed');
}); 