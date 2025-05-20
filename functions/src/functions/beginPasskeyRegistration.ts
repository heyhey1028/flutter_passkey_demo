import { onCall } from 'firebase-functions/v2/https';
import { generateRegistrationOptions } from '@simplewebauthn/server';
import { db, admin } from '../firebase-admin';
import {
  BeginPasskeyRegistrationRequest,
  BeginPasskeyRegistrationResponse,
} from '../types';

const RP_ID = process.env.RP_ID || 'example.com';
const RP_NAME = 'Passkey Demo';

export const beginPasskeyRegistration = onCall({
  region: 'asia-northeast2',
}, async (request) => {
  const { userId, username, displayName } = request.data as BeginPasskeyRegistrationRequest;

  const options = await generateRegistrationOptions({
    rpName: RP_NAME,
    rpID: RP_ID,
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