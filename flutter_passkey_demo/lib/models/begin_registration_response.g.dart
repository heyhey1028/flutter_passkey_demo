// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'begin_registration_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BeginRegistrationResponseImpl _$$BeginRegistrationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BeginRegistrationResponseImpl(
      challenge: json['challenge'] as String,
      rp: RelyingParty.fromJson(json['rp'] as Map<String, dynamic>),
      user: UserInfo.fromJson(json['user'] as Map<String, dynamic>),
      pubKeyCredParams: (json['pubKeyCredParams'] as List<dynamic>)
          .map((e) => PubKeyCredParam.fromJson(e as Map<String, dynamic>))
          .toList(),
      timeout: (json['timeout'] as num).toInt(),
      authenticatorSelection: AuthenticatorSelection.fromJson(
          json['authenticatorSelection'] as Map<String, dynamic>),
      attestation: json['attestation'] as String,
    );

Map<String, dynamic> _$$BeginRegistrationResponseImplToJson(
        _$BeginRegistrationResponseImpl instance) =>
    <String, dynamic>{
      'challenge': instance.challenge,
      'rp': instance.rp,
      'user': instance.user,
      'pubKeyCredParams': instance.pubKeyCredParams,
      'timeout': instance.timeout,
      'authenticatorSelection': instance.authenticatorSelection,
      'attestation': instance.attestation,
    };
