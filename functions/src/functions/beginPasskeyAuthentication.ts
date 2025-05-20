import { onCall, HttpsError } from 'firebase-functions/v2/https';
import * as admin from 'firebase-admin';
import { generateAuthenticationOptions } from '@simplewebauthn/server';
import * as functions from 'firebase-functions';
import {
  BeginPasskeyAuthenticationRequest,
  BeginPasskeyAuthenticationResponse,
} from '../types';

const db = admin.firestore();
const RP_ID = functions.config().rp_id;

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