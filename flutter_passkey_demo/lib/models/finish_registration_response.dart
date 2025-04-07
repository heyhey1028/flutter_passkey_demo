import 'package:freezed_annotation/freezed_annotation.dart';

part 'finish_registration_response.freezed.dart';
part 'finish_registration_response.g.dart';

@freezed
class FinishRegistrationResponse with _$FinishRegistrationResponse {
  const factory FinishRegistrationResponse({
    required String status,
    required String message,
  }) = _FinishRegistrationResponse;

  factory FinishRegistrationResponse.fromJson(Map<String, dynamic> json) => _$FinishRegistrationResponseFromJson(json);
}
