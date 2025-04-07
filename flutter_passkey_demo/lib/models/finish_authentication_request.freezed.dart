// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finish_authentication_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FinishAuthenticationRequest _$FinishAuthenticationRequestFromJson(
    Map<String, dynamic> json) {
  return _FinishAuthenticationRequest.fromJson(json);
}

/// @nodoc
mixin _$FinishAuthenticationRequest {
  String get userId => throw _privateConstructorUsedError;
  AttestationResponse get attestationResponse =>
      throw _privateConstructorUsedError;

  /// Serializes this FinishAuthenticationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FinishAuthenticationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinishAuthenticationRequestCopyWith<FinishAuthenticationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinishAuthenticationRequestCopyWith<$Res> {
  factory $FinishAuthenticationRequestCopyWith(
          FinishAuthenticationRequest value,
          $Res Function(FinishAuthenticationRequest) then) =
      _$FinishAuthenticationRequestCopyWithImpl<$Res,
          FinishAuthenticationRequest>;
  @useResult
  $Res call({String userId, AttestationResponse attestationResponse});

  $AttestationResponseCopyWith<$Res> get attestationResponse;
}

/// @nodoc
class _$FinishAuthenticationRequestCopyWithImpl<$Res,
        $Val extends FinishAuthenticationRequest>
    implements $FinishAuthenticationRequestCopyWith<$Res> {
  _$FinishAuthenticationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FinishAuthenticationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? attestationResponse = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      attestationResponse: null == attestationResponse
          ? _value.attestationResponse
          : attestationResponse // ignore: cast_nullable_to_non_nullable
              as AttestationResponse,
    ) as $Val);
  }

  /// Create a copy of FinishAuthenticationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttestationResponseCopyWith<$Res> get attestationResponse {
    return $AttestationResponseCopyWith<$Res>(_value.attestationResponse,
        (value) {
      return _then(_value.copyWith(attestationResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FinishAuthenticationRequestImplCopyWith<$Res>
    implements $FinishAuthenticationRequestCopyWith<$Res> {
  factory _$$FinishAuthenticationRequestImplCopyWith(
          _$FinishAuthenticationRequestImpl value,
          $Res Function(_$FinishAuthenticationRequestImpl) then) =
      __$$FinishAuthenticationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, AttestationResponse attestationResponse});

  @override
  $AttestationResponseCopyWith<$Res> get attestationResponse;
}

/// @nodoc
class __$$FinishAuthenticationRequestImplCopyWithImpl<$Res>
    extends _$FinishAuthenticationRequestCopyWithImpl<$Res,
        _$FinishAuthenticationRequestImpl>
    implements _$$FinishAuthenticationRequestImplCopyWith<$Res> {
  __$$FinishAuthenticationRequestImplCopyWithImpl(
      _$FinishAuthenticationRequestImpl _value,
      $Res Function(_$FinishAuthenticationRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of FinishAuthenticationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? attestationResponse = null,
  }) {
    return _then(_$FinishAuthenticationRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      attestationResponse: null == attestationResponse
          ? _value.attestationResponse
          : attestationResponse // ignore: cast_nullable_to_non_nullable
              as AttestationResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FinishAuthenticationRequestImpl
    implements _FinishAuthenticationRequest {
  const _$FinishAuthenticationRequestImpl(
      {required this.userId, required this.attestationResponse});

  factory _$FinishAuthenticationRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FinishAuthenticationRequestImplFromJson(json);

  @override
  final String userId;
  @override
  final AttestationResponse attestationResponse;

  @override
  String toString() {
    return 'FinishAuthenticationRequest(userId: $userId, attestationResponse: $attestationResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinishAuthenticationRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.attestationResponse, attestationResponse) ||
                other.attestationResponse == attestationResponse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, attestationResponse);

  /// Create a copy of FinishAuthenticationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinishAuthenticationRequestImplCopyWith<_$FinishAuthenticationRequestImpl>
      get copyWith => __$$FinishAuthenticationRequestImplCopyWithImpl<
          _$FinishAuthenticationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinishAuthenticationRequestImplToJson(
      this,
    );
  }
}

abstract class _FinishAuthenticationRequest
    implements FinishAuthenticationRequest {
  const factory _FinishAuthenticationRequest(
          {required final String userId,
          required final AttestationResponse attestationResponse}) =
      _$FinishAuthenticationRequestImpl;

  factory _FinishAuthenticationRequest.fromJson(Map<String, dynamic> json) =
      _$FinishAuthenticationRequestImpl.fromJson;

  @override
  String get userId;
  @override
  AttestationResponse get attestationResponse;

  /// Create a copy of FinishAuthenticationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinishAuthenticationRequestImplCopyWith<_$FinishAuthenticationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
