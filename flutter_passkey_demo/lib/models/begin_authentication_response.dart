import 'package:freezed_annotation/freezed_annotation.dart';
import 'allow_credential.dart';

part 'begin_authentication_response.freezed.dart';
part 'begin_authentication_response.g.dart';

@freezed
class BeginAuthenticationResponse with _$BeginAuthenticationResponse {
  const factory BeginAuthenticationResponse({
    required String challenge,
    required String rpId,
    required List<AllowCredential> allowCredentials,
    required int timeout,
    required String userVerification,
  }) = _BeginAuthenticationResponse;

  factory BeginAuthenticationResponse.fromJson(Map<String, dynamic> json) => _$BeginAuthenticationResponseFromJson(json);
}
