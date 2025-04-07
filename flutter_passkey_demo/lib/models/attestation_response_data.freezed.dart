// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attestation_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttestationResponseData _$AttestationResponseDataFromJson(
    Map<String, dynamic> json) {
  return _AttestationResponseData.fromJson(json);
}

/// @nodoc
mixin _$AttestationResponseData {
  String get clientDataJSON => throw _privateConstructorUsedError;
  String get attestationObject => throw _privateConstructorUsedError;

  /// Serializes this AttestationResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttestationResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttestationResponseDataCopyWith<AttestationResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttestationResponseDataCopyWith<$Res> {
  factory $AttestationResponseDataCopyWith(AttestationResponseData value,
          $Res Function(AttestationResponseData) then) =
      _$AttestationResponseDataCopyWithImpl<$Res, AttestationResponseData>;
  @useResult
  $Res call({String clientDataJSON, String attestationObject});
}

/// @nodoc
class _$AttestationResponseDataCopyWithImpl<$Res,
        $Val extends AttestationResponseData>
    implements $AttestationResponseDataCopyWith<$Res> {
  _$AttestationResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttestationResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientDataJSON = null,
    Object? attestationObject = null,
  }) {
    return _then(_value.copyWith(
      clientDataJSON: null == clientDataJSON
          ? _value.clientDataJSON
          : clientDataJSON // ignore: cast_nullable_to_non_nullable
              as String,
      attestationObject: null == attestationObject
          ? _value.attestationObject
          : attestationObject // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttestationResponseDataImplCopyWith<$Res>
    implements $AttestationResponseDataCopyWith<$Res> {
  factory _$$AttestationResponseDataImplCopyWith(
          _$AttestationResponseDataImpl value,
          $Res Function(_$AttestationResponseDataImpl) then) =
      __$$AttestationResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String clientDataJSON, String attestationObject});
}

/// @nodoc
class __$$AttestationResponseDataImplCopyWithImpl<$Res>
    extends _$AttestationResponseDataCopyWithImpl<$Res,
        _$AttestationResponseDataImpl>
    implements _$$AttestationResponseDataImplCopyWith<$Res> {
  __$$AttestationResponseDataImplCopyWithImpl(
      _$AttestationResponseDataImpl _value,
      $Res Function(_$AttestationResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttestationResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientDataJSON = null,
    Object? attestationObject = null,
  }) {
    return _then(_$AttestationResponseDataImpl(
      clientDataJSON: null == clientDataJSON
          ? _value.clientDataJSON
          : clientDataJSON // ignore: cast_nullable_to_non_nullable
              as String,
      attestationObject: null == attestationObject
          ? _value.attestationObject
          : attestationObject // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttestationResponseDataImpl implements _AttestationResponseData {
  const _$AttestationResponseDataImpl(
      {required this.clientDataJSON, required this.attestationObject});

  factory _$AttestationResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttestationResponseDataImplFromJson(json);

  @override
  final String clientDataJSON;
  @override
  final String attestationObject;

  @override
  String toString() {
    return 'AttestationResponseData(clientDataJSON: $clientDataJSON, attestationObject: $attestationObject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttestationResponseDataImpl &&
            (identical(other.clientDataJSON, clientDataJSON) ||
                other.clientDataJSON == clientDataJSON) &&
            (identical(other.attestationObject, attestationObject) ||
                other.attestationObject == attestationObject));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, clientDataJSON, attestationObject);

  /// Create a copy of AttestationResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttestationResponseDataImplCopyWith<_$AttestationResponseDataImpl>
      get copyWith => __$$AttestationResponseDataImplCopyWithImpl<
          _$AttestationResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttestationResponseDataImplToJson(
      this,
    );
  }
}

abstract class _AttestationResponseData implements AttestationResponseData {
  const factory _AttestationResponseData(
      {required final String clientDataJSON,
      required final String attestationObject}) = _$AttestationResponseDataImpl;

  factory _AttestationResponseData.fromJson(Map<String, dynamic> json) =
      _$AttestationResponseDataImpl.fromJson;

  @override
  String get clientDataJSON;
  @override
  String get attestationObject;

  /// Create a copy of AttestationResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttestationResponseDataImplCopyWith<_$AttestationResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
