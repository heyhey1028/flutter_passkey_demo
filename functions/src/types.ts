import {
  RegistrationResponseJSON,
  AuthenticationResponseJSON,
  PublicKeyCredentialCreationOptionsJSON,
  PublicKeyCredentialRequestOptionsJSON,
} from '@simplewebauthn/server';

export interface BeginPasskeyRegistrationRequest {
  userId: string;
  username: string;
  displayName: string;
}

export type BeginPasskeyRegistrationResponse = PublicKeyCredentialCreationOptionsJSON;

export interface FinishPasskeyRegistrationRequest {
  userId: string;
  attestationResponse: RegistrationResponseJSON;
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
  userId: string;
  attestationResponse: AuthenticationResponseJSON;
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