import * as admin from 'firebase-admin';
import { beginPasskeyRegistration } from './functions/beginPasskeyRegistration';
import { finishPasskeyRegistration } from './functions/finishPasskeyRegistration';
import { beginPasskeyAuthentication } from './functions/beginPasskeyAuthentication';
import { finishPasskeyAuthentication } from './functions/finishPasskeyAuthentication';

admin.initializeApp();

export {
  beginPasskeyRegistration,
  finishPasskeyRegistration,
  beginPasskeyAuthentication,
  finishPasskeyAuthentication,
};
