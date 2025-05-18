// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finish_authentication_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FinishAuthenticationRequestImpl _$$FinishAuthenticationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FinishAuthenticationRequestImpl(
      userId: json['userId'] as String,
      attestationResponse: AttestationResponse.fromJson(
          json['attestationResponse'] as Map<String, dynamic>),
      platform: json['platform'] as String,
    );

Map<String, dynamic> _$$FinishAuthenticationRequestImplToJson(
        _$FinishAuthenticationRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'attestationResponse': instance.attestationResponse,
      'platform': instance.platform,
    };
