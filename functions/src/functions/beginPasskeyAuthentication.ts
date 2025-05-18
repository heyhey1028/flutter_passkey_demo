import { onCall, HttpsError } from 'firebase-functions/v2/https';
import * as admin from 'firebase-admin';
import { generateAuthenticationOptions } from '@simplewebauthn/server';
import * as functions from 'firebase-functions';
import {
  BeginPasskeyAuthenticationRequest,
  BeginPasskeyAuthenticationResponse,
  StoredCredential,
} from '../types';

const db = admin.firestore();
const RP_ID = functions.config().rp_id;

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
    rpID: RP_ID,
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