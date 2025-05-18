import 'package:freezed_annotation/freezed_annotation.dart';
import 'attestation_response.dart';

part 'finish_registration_request.freezed.dart';
part 'finish_registration_request.g.dart';

@freezed
class FinishRegistrationRequest with _$FinishRegistrationRequest {
  const factory FinishRegistrationRequest({
    required String userId,
    required AttestationResponse attestationResponse,
    required String platform,
  }) = _FinishRegistrationRequest;

  factory FinishRegistrationRequest.fromJson(Map<String, dynamic> json) => _$FinishRegistrationRequestFromJson(json);
}
