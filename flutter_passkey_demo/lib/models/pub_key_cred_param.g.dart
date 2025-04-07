// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pub_key_cred_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PubKeyCredParamImpl _$$PubKeyCredParamImplFromJson(
        Map<String, dynamic> json) =>
    _$PubKeyCredParamImpl(
      type: json['type'] as String,
      alg: (json['alg'] as num).toInt(),
    );

Map<String, dynamic> _$$PubKeyCredParamImplToJson(
        _$PubKeyCredParamImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'alg': instance.alg,
    };
