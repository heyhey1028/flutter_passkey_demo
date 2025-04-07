import 'package:freezed_annotation/freezed_annotation.dart';
import 'attestation_response_data.dart';

part 'attestation_response.freezed.dart';
part 'attestation_response.g.dart';

@freezed
class AttestationResponse with _$AttestationResponse {
  const factory AttestationResponse({
    required String id,
    required String rawId,
    required String type,
    required AttestationResponseData response,
  }) = _AttestationResponse;

  factory AttestationResponse.fromJson(Map<String, dynamic> json) => _$AttestationResponseFromJson(json);
}
