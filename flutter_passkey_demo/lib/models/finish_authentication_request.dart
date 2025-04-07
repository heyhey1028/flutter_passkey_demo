import 'package:freezed_annotation/freezed_annotation.dart';
import 'attestation_response.dart';

part 'finish_authentication_request.freezed.dart';
part 'finish_authentication_request.g.dart';

@freezed
class FinishAuthenticationRequest with _$FinishAuthenticationRequest {
  const factory FinishAuthenticationRequest({
    required String userId,
    required AttestationResponse attestationResponse,
  }) = _FinishAuthenticationRequest;

  factory FinishAuthenticationRequest.fromJson(Map<String, dynamic> json) => _$FinishAuthenticationRequestFromJson(json);
}
