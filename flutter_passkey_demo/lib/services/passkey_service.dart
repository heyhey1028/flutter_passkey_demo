import 'package:flutter_passkey_demo/repositories/passkey_repository.dart';
import 'package:flutter_passkey_demo/models/begin_registration_request.dart';
import 'package:flutter_passkey_demo/models/finish_registration_request.dart';
import 'package:flutter_passkey_demo/models/begin_authentication_request.dart';
import 'package:flutter_passkey_demo/models/finish_authentication_request.dart';
import 'package:flutter_passkey_demo/models/attestation_response.dart';
import 'package:flutter_passkey_demo/models/attestation_response_data.dart';
import 'package:flutter_passkey_demo/utils/platform_util.dart';
import 'package:passkeys/authenticator.dart';
import 'package:passkeys/types.dart';

class PasskeyService {
  final PasskeyRepository _repository;
  final PasskeyAuthenticator _passkeys;

  PasskeyService({
    required PasskeyRepository repository,
  })  : _repository = repository,
        _passkeys = PasskeyAuthenticator();

  Future<void> registerPasskey({
    required String userId,
    required String username,
    required String displayName,
  }) async {
    try {
      // Step 1: Begin registration by getting options from the server
      final beginResponse = await _repository.beginPasskeyRegistration(
        BeginRegistrationRequest(
          userId: userId,
          username: username,
          displayName: displayName,
        ),
      );

      // Step 2: Create registration request with WebAuthn options
      final request = RegisterRequestType(
        challenge: beginResponse.challenge,
        relyingParty: RelyingPartyType(
          name: beginResponse.rp.name,
          id: beginResponse.rp.id,
        ),
        user: UserType(
          id: beginResponse.user.id,
          name: beginResponse.user.name,
          displayName: beginResponse.user.displayName,
        ),
        authSelectionType: AuthenticatorSelectionType(
          authenticatorAttachment: 'platform',
          requireResidentKey: true,
          residentKey: 'required',
          userVerification: 'preferred',
        ),
        excludeCredentials: [],
      );

      // Step 3: Create passkey using platform authenticator
      final credential = await _passkeys.register(request);

      // Step 4: Get current platform information (ios/android/web)
      final platform = PlatformUtil.getPlatformString();

      // Step 5: Complete registration by sending credential to server
      await _repository.finishPasskeyRegistration(
        FinishRegistrationRequest(
          userId: userId,
          attestationResponse: AttestationResponse(
            id: credential.id,
            rawId: credential.rawId,
            type: 'public-key',
            response: AttestationResponseData(
              clientDataJSON: credential.clientDataJSON,
              attestationObject: credential.attestationObject,
            ),
          ),
          platform: platform,
        ),
      );
    } catch (e) {
      throw Exception('Failed to register passkey: $e');
    }
  }

  Future<String> authenticatePasskey({
    required String userId,
  }) async {
    try {
      // Step 1: Begin authentication by getting options from the server
      final beginResponse = await _repository.beginPasskeyAuthentication(
        BeginAuthenticationRequest(
          userId: userId,
        ),
      );

      // Step 2: Create authentication request with WebAuthn options
      final request = AuthenticateRequestType(
        challenge: beginResponse.challenge,
        relyingPartyId: beginResponse.rpId,
        mediation: MediationType.Conditional,
        preferImmediatelyAvailableCredentials: true,
        allowCredentials: beginResponse.allowCredentials
            .map((cred) => CredentialType(
                  id: cred.id,
                  type: 'public-key',
                  transports: ['internal'],
                ))
            .toList(),
      );

      // Step 3: Authenticate using platform authenticator
      final AuthenticateResponseType credential = await _passkeys.authenticate(request);

      // Step 4: Get current platform information (ios/android/web)
      final platform = PlatformUtil.getPlatformString();

      // Step 5: Complete authentication by sending credential to server
      final response = await _repository.finishPasskeyAuthentication(
        FinishAuthenticationRequest(
          userId: userId,
          attestationResponse: AttestationResponse(
            id: credential.id,
            rawId: credential.rawId,
            type: 'public-key',
            response: AttestationResponseData(
              clientDataJSON: credential.clientDataJSON,
              attestationObject: credential.signature,
            ),
          ),
          platform: platform,
        ),
      );

      // Step 6: Return Firebase token for authenticated session
      return response.firebaseToken;
    } catch (e) {
      throw Exception('Failed to authenticate with passkey: $e');
    }
  }
}
