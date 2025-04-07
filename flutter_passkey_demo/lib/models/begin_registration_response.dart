import 'package:freezed_annotation/freezed_annotation.dart';
import 'relying_party.dart';
import 'user_info.dart';
import 'pub_key_cred_param.dart';
import 'authenticator_selection.dart';

part 'begin_registration_response.freezed.dart';
part 'begin_registration_response.g.dart';

@freezed
class BeginRegistrationResponse with _$BeginRegistrationResponse {
  const factory BeginRegistrationResponse({
    required String challenge,
    required RelyingParty rp,
    required UserInfo user,
    required List<PubKeyCredParam> pubKeyCredParams,
    required int timeout,
    required AuthenticatorSelection authenticatorSelection,
    required String attestation,
  }) = _BeginRegistrationResponse;

  factory BeginRegistrationResponse.fromJson(Map<String, dynamic> json) => _$BeginRegistrationResponseFromJson(json);
}
