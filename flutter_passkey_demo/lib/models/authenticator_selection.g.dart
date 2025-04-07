// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticator_selection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticatorSelectionImpl _$$AuthenticatorSelectionImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticatorSelectionImpl(
      authenticatorAttachment: json['authenticatorAttachment'] as String,
      requireResidentKey: json['requireResidentKey'] as bool,
      userVerification: json['userVerification'] as String,
    );

Map<String, dynamic> _$$AuthenticatorSelectionImplToJson(
        _$AuthenticatorSelectionImpl instance) =>
    <String, dynamic>{
      'authenticatorAttachment': instance.authenticatorAttachment,
      'requireResidentKey': instance.requireResidentKey,
      'userVerification': instance.userVerification,
    };
