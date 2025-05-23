import { onCall, HttpsError } from 'firebase-functions/v2/https';
import { verifyAuthenticationResponse } from '@simplewebauthn/server';
import { db, admin } from '../firebase-admin';
import {
  FinishPasskeyAuthenticationRequest,
  FinishPasskeyAuthenticationResponse,
  StoredCredential,
} from '../types';

const RP_ID = process.env.RP_ID || 'example.com';
const ORIGIN_IOS = process.env.ORIGIN_IOS || 'ios:com.example.app';
const ORIGIN_ANDROID = process.env.ORIGIN_ANDROID || 'android:SHA256:00:11:22:33:44:55:66:77:88:99:AA:BB:CC:DD:EE:FF:00:11:22:33:44:55:66:77:88:99:AA:BB:CC:DD:EE:FF';
const ORIGIN_WEB = process.env.ORIGIN_WEB || 'https://example.com';

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