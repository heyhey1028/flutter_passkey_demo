// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finish_registration_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FinishRegistrationRequestImpl _$$FinishRegistrationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FinishRegistrationRequestImpl(
      userId: json['userId'] as String,
      attestationResponse: AttestationResponse.fromJson(
          json['attestationResponse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FinishRegistrationRequestImplToJson(
        _$FinishRegistrationRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'attestationResponse': instance.attestationResponse,
    };
