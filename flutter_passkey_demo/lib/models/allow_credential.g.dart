// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allow_credential.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllowCredentialImpl _$$AllowCredentialImplFromJson(
        Map<String, dynamic> json) =>
    _$AllowCredentialImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      transports: (json['transports'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$AllowCredentialImplToJson(
        _$AllowCredentialImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'transports': instance.transports,
    };
