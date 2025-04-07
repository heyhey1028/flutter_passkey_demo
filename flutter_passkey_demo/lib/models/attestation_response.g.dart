// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attestation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttestationResponseImpl _$$AttestationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AttestationResponseImpl(
      id: json['id'] as String,
      rawId: json['rawId'] as String,
      type: json['type'] as String,
      response: AttestationResponseData.fromJson(
          json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AttestationResponseImplToJson(
        _$AttestationResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rawId': instance.rawId,
      'type': instance.type,
      'response': instance.response,
    };
