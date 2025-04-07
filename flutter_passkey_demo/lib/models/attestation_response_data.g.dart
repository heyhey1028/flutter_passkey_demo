// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attestation_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttestationResponseDataImpl _$$AttestationResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$AttestationResponseDataImpl(
      clientDataJSON: json['clientDataJSON'] as String,
      attestationObject: json['attestationObject'] as String,
    );

Map<String, dynamic> _$$AttestationResponseDataImplToJson(
        _$AttestationResponseDataImpl instance) =>
    <String, dynamic>{
      'clientDataJSON': instance.clientDataJSON,
      'attestationObject': instance.attestationObject,
    };
