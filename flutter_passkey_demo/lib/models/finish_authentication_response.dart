import 'package:freezed_annotation/freezed_annotation.dart';

part 'finish_authentication_response.freezed.dart';
part 'finish_authentication_response.g.dart';

@freezed
class FinishAuthenticationResponse with _$FinishAuthenticationResponse {
  const factory FinishAuthenticationResponse({
    required String status,
    required String message,
    required String firebaseToken,
  }) = _FinishAuthenticationResponse;

  factory FinishAuthenticationResponse.fromJson(Map<String, dynamic> json) => _$FinishAuthenticationResponseFromJson(json);
}
