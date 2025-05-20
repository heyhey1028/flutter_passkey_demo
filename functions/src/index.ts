import './firebase-admin';
import { beginPasskeyRegistration } from './functions/beginPasskeyRegistration';
import { finishPasskeyRegistration } from './functions/finishPasskeyRegistration';
import { beginPasskeyAuthentication } from './functions/beginPasskeyAuthentication';
import { finishPasskeyAuthentication } from './functions/finishPasskeyAuthentication';

export {
  beginPasskeyRegistration,
  finishPasskeyRegistration,
  beginPasskeyAuthentication,
  finishPasskeyAuthentication,
};
