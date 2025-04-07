import 'package:freezed_annotation/freezed_annotation.dart';

part 'begin_registration_request.freezed.dart';
part 'begin_registration_request.g.dart';

@freezed
class BeginRegistrationRequest with _$BeginRegistrationRequest {
  const factory BeginRegistrationRequest({
    required String userId,
    required String username,
    required String displayName,
  }) = _BeginRegistrationRequest;

  factory BeginRegistrationRequest.fromJson(Map<String, dynamic> json) => _$BeginRegistrationRequestFromJson(json);
}
