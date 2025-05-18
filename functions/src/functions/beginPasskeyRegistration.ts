import { onCall } from 'firebase-functions/v2/https';
import * as admin from 'firebase-admin';
import { generateRegistrationOptions } from '@simplewebauthn/server';
import * as functions from 'firebase-functions';
import {
  BeginPasskeyRegistrationRequest,
  BeginPasskeyRegistrationResponse,
} from '../types';

const db = admin.firestore();
const RP_ID = functions.config().rp_id;
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