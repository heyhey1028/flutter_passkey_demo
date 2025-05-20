import {
  RegistrationResponseJSON,
  AuthenticationResponseJSON,
  PublicKeyCredentialCreationOptionsJSON,
  PublicKeyCredentialRequestOptionsJSON,
} from '@simplewebauthn/server';

declare global {
  namespace FirebaseFunctions {
    interface Config {
      auth: {
        rp_id: string;
        origin_ios: string;
        origin_android: string;
        origin_web: string;
      }
    }
  }
}

export interface BeginPasskeyRegistrationRequest {
  userId: string;
  username: string;
  displayName: string;
}

export type BeginPasskeyRegistrationResponse = PublicKeyCredentialCreationOptionsJSON;

export interface FinishPasskeyRegistrationRequest {
  userId: string;
  attestationResponse: RegistrationResponseJSON;
  platform: 'ios' | 'android' | 'web';
}

export interface FinishPasskeyRegistrationResponse {
  status: string;
  message: string;
}

export interface BeginPasskeyAuthenticationRequest {
  userId: string;
}

export type BeginPasskeyAuthenticationResponse = PublicKeyCredentialRequestOptionsJSON;

export interface FinishPasskeyAuthenticationRequest {
  userId?: string;
  attestationResponse: AuthenticationResponseJSON;
  platform: 'ios' | 'android' | 'web';
  challengeId: string;
}

export interface FinishPasskeyAuthenticationResponse {
  status: string;
  message: string;
  firebaseToken: string;
}

export interface StoredCredential {
  credentialID: string;
  credentialPublicKey: string;
  counter: number;
} 