import 'package:freezed_annotation/freezed_annotation.dart';

part 'attestation_response_data.freezed.dart';
part 'attestation_response_data.g.dart';

@freezed
class AttestationResponseData with _$AttestationResponseData {
  const factory AttestationResponseData({
    required String clientDataJSON,
    required String attestationObject,
  }) = _AttestationResponseData;

  factory AttestationResponseData.fromJson(Map<String, dynamic> json) => _$AttestationResponseDataFromJson(json);
}
