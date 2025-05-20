import { onCall } from 'firebase-functions/v2/https';
import { generateAuthenticationOptions } from '@simplewebauthn/server';
import { db, admin } from '../firebase-admin';
import {
  BeginPasskeyAuthenticationResponse,
} from '../types';

const RP_ID = process.env.RP_ID|| 'example.com';

export const beginPasskeyAuthentication = onCall({
  region: 'asia-northeast2',
}, async () => {
  const options = await generateAuthenticationOptions({
    rpID: RP_ID,
    allowCredentials: [], // Empty list for Discoverable Credentials
    userVerification: 'preferred',
  });

  // Generate a random ID for the challenge
  const challengeId = admin.firestore().collection('challenges').doc().id;

  // Save the challenge
  await db.collection('challenges').doc(challengeId).set({
    challenge: options.challenge,
    timestamp: admin.firestore.FieldValue.serverTimestamp(),
  });

  return {
    ...options,
    challengeId, // Include challengeId in the response
  } as BeginPasskeyAuthenticationResponse;
}); 