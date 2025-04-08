import { onCall } from 'firebase-functions/v2/https';
import * as admin from 'firebase-admin';
import { generateRegistrationOptions } from '@simplewebauthn/server';
import {
  BeginPasskeyRegistrationRequest,
  BeginPasskeyRegistrationResponse,
} from '../types';

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