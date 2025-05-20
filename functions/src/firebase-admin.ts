import * as admin from 'firebase-admin';

// Initialize Firebase Admin with service account
admin.initializeApp({
  credential: admin.credential.cert(require('../service-account.json')),
});

// Export the initialized admin instance
export const db = admin.firestore();
export const auth = admin.auth();
export { admin }; 