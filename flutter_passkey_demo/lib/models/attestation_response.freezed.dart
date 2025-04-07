// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attestation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttestationResponse _$AttestationResponseFromJson(Map<String, dynamic> json) {
  return _AttestationResponse.fromJson(json);
}

/// @nodoc
mixin _$AttestationResponse {
  String get id => throw _privateConstructorUsedError;
  String get rawId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  AttestationResponseData get response => throw _privateConstructorUsedError;

  /// Serializes this AttestationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttestationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttestationResponseCopyWith<AttestationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttestationResponseCopyWith<$Res> {
  factory $AttestationResponseCopyWith(
          AttestationResponse value, $Res Function(AttestationResponse) then) =
      _$AttestationResponseCopyWithImpl<$Res, AttestationResponse>;
  @useResult
  $Res call(
      {String id, String rawId, String type, AttestationResponseData response});

  $AttestationResponseDataCopyWith<$Res> get response;
}

/// @nodoc
class _$AttestationResponseCopyWithImpl<$Res, $Val extends AttestationResponse>
    implements $AttestationResponseCopyWith<$Res> {
  _$AttestationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttestationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rawId = null,
    Object? type = null,
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rawId: null == rawId
          ? _value.rawId
          : rawId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as AttestationResponseData,
    ) as $Val);
  }

  /// Create a copy of AttestationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttestationResponseDataCopyWith<$Res> get response {
    return $AttestationResponseDataCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttestationResponseImplCopyWith<$Res>
    implements $AttestationResponseCopyWith<$Res> {
  factory _$$AttestationResponseImplCopyWith(_$AttestationResponseImpl value,
          $Res Function(_$AttestationResponseImpl) then) =
      __$$AttestationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String rawId, String type, AttestationResponseData response});

  @override
  $AttestationResponseDataCopyWith<$Res> get response;
}

/// @nodoc
class __$$AttestationResponseImplCopyWithImpl<$Res>
    extends _$AttestationResponseCopyWithImpl<$Res, _$AttestationResponseImpl>
    implements _$$AttestationResponseImplCopyWith<$Res> {
  __$$AttestationResponseImplCopyWithImpl(_$AttestationResponseImpl _value,
      $Res Function(_$AttestationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttestationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rawId = null,
    Object? type = null,
    Object? response = null,
  }) {
    return _then(_$AttestationResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rawId: null == rawId
          ? _value.rawId
          : rawId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as AttestationResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttestationResponseImpl implements _AttestationResponse {
  const _$AttestationResponseImpl(
      {required this.id,
      required this.rawId,
      required this.type,
      required this.response});

  factory _$AttestationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttestationResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String rawId;
  @override
  final String type;
  @override
  final AttestationResponseData response;

  @override
  String toString() {
    return 'AttestationResponse(id: $id, rawId: $rawId, type: $type, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttestationResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rawId, rawId) || other.rawId == rawId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, rawId, type, response);

  /// Create a copy of AttestationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttestationResponseImplCopyWith<_$AttestationResponseImpl> get copyWith =>
      __$$AttestationResponseImplCopyWithImpl<_$AttestationResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttestationResponseImplToJson(
      this,
    );
  }
}

abstract class _AttestationResponse implements AttestationResponse {
  const factory _AttestationResponse(
          {required final String id,
          required final String rawId,
          required final String type,
          required final AttestationResponseData response}) =
      _$AttestationResponseImpl;

  factory _AttestationResponse.fromJson(Map<String, dynamic> json) =
      _$AttestationResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get rawId;
  @override
  String get type;
  @override
  AttestationResponseData get response;

  /// Create a copy of AttestationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttestationResponseImplCopyWith<_$AttestationResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
