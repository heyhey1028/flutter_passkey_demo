// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finish_authentication_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FinishAuthenticationResponseImpl _$$FinishAuthenticationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FinishAuthenticationResponseImpl(
      status: json['status'] as String,
      message: json['message'] as String,
      firebaseToken: json['firebaseToken'] as String,
    );

Map<String, dynamic> _$$FinishAuthenticationResponseImplToJson(
        _$FinishAuthenticationResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'firebaseToken': instance.firebaseToken,
    };
