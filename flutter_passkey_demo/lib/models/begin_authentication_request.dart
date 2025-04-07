import 'package:freezed_annotation/freezed_annotation.dart';

part 'begin_authentication_request.freezed.dart';
part 'begin_authentication_request.g.dart';

@freezed
class BeginAuthenticationRequest with _$BeginAuthenticationRequest {
  const factory BeginAuthenticationRequest({
    required String userId,
  }) = _BeginAuthenticationRequest;

  factory BeginAuthenticationRequest.fromJson(Map<String, dynamic> json) => _$BeginAuthenticationRequestFromJson(json);
}
