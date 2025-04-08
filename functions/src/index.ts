import { onCall, HttpsError } from 'firebase-functions/v2/https';
import * as admin from 'firebase-admin';
import {
  generateRegistrationOptions,
  generateAuthenticationOptions,
  verifyRegistrationResponse,
  verifyAuthenticationResponse,
} from '@simplewebauthn/server';
import {
  BeginPasskeyRegistrationRequest,
  BeginPasskeyRegistrationResponse,
  FinishPasskeyRegistrationRequest,
  FinishPasskeyRegistrationResponse,
  BeginPasskeyAuthenticationRequest,
  BeginPasskeyAuthenticationResponse,
  FinishPasskeyAuthenticationRequest,
  FinishPasskeyAuthenticationResponse,
  StoredCredential,
} from './types';

admin.initializeApp();

const db = admin.firestore();

export const beginPasskeyRegistration = onCall({
  region: 'asia-northeast2',
}, async (request) => {
  const { userId, username, displayName } = request.data as BeginPasskeyRegistrationRequest;

  const options = await generateRegistrationOptions({
    rpName: 'Passkey Demo',
    rpID: 'localhost',
    userID: new TextEncoder().encode(userId),
    userName: username,
    userDisplayName: displayName,
    attestationType: 'none',
    authenticatorSelection: {
      authenticatorAttachment: 'platform',
      requireResidentKey: true,
      userVerification: 'preferred',
    },
  });

  // チャレンジを保存
  await db.collection('challenges').doc(userId).set({
    challenge: options.challenge,
    timestamp: admin.firestore.FieldValue.serverTimestamp(),
  });

  return options as BeginPasskeyRegistrationResponse;
});

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

export const beginPasskeyAuthentication = onCall({
  region: 'asia-northeast2',
}, async (request) => {
  const { userId } = request.data as BeginPasskeyAuthenticationRequest;

  // クレデンシャルを取得
  const credentialDoc = await db.collection('credentials').doc(userId).get();
  if (!credentialDoc.exists) {
    throw new HttpsError('failed-precondition', 'Credential not found');
  }

  const credential = credentialDoc.data() as StoredCredential;

  const options = await generateAuthenticationOptions({
    rpID: 'localhost',
    allowCredentials: [
      {
        id: Buffer.from(credential.credentialID, 'base64url').toString('base64url'),
        transports: ['internal'],
      },
    ],
    userVerification: 'preferred',
  });

  // チャレンジを保存
  await db.collection('challenges').doc(userId).set({
    challenge: options.challenge,
    timestamp: admin.firestore.FieldValue.serverTimestamp(),
  });

  return options as BeginPasskeyAuthenticationResponse;
});

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
