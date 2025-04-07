// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'begin_authentication_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BeginAuthenticationResponseImpl _$$BeginAuthenticationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BeginAuthenticationResponseImpl(
      challenge: json['challenge'] as String,
      rpId: json['rpId'] as String,
      allowCredentials: (json['allowCredentials'] as List<dynamic>)
          .map((e) => AllowCredential.fromJson(e as Map<String, dynamic>))
          .toList(),
      timeout: (json['timeout'] as num).toInt(),
      userVerification: json['userVerification'] as String,
    );

Map<String, dynamic> _$$BeginAuthenticationResponseImplToJson(
        _$BeginAuthenticationResponseImpl instance) =>
    <String, dynamic>{
      'challenge': instance.challenge,
      'rpId': instance.rpId,
      'allowCredentials': instance.allowCredentials,
      'timeout': instance.timeout,
      'userVerification': instance.userVerification,
    };
