// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finish_registration_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FinishRegistrationRequest _$FinishRegistrationRequestFromJson(
    Map<String, dynamic> json) {
  return _FinishRegistrationRequest.fromJson(json);
}

/// @nodoc
mixin _$FinishRegistrationRequest {
  String get userId => throw _privateConstructorUsedError;
  AttestationResponse get attestationResponse =>
      throw _privateConstructorUsedError;

  /// Serializes this FinishRegistrationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FinishRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinishRegistrationRequestCopyWith<FinishRegistrationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinishRegistrationRequestCopyWith<$Res> {
  factory $FinishRegistrationRequestCopyWith(FinishRegistrationRequest value,
          $Res Function(FinishRegistrationRequest) then) =
      _$FinishRegistrationRequestCopyWithImpl<$Res, FinishRegistrationRequest>;
  @useResult
  $Res call({String userId, AttestationResponse attestationResponse});

  $AttestationResponseCopyWith<$Res> get attestationResponse;
}

/// @nodoc
class _$FinishRegistrationRequestCopyWithImpl<$Res,
        $Val extends FinishRegistrationRequest>
    implements $FinishRegistrationRequestCopyWith<$Res> {
  _$FinishRegistrationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FinishRegistrationRequest
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

  /// Create a copy of FinishRegistrationRequest
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
abstract class _$$FinishRegistrationRequestImplCopyWith<$Res>
    implements $FinishRegistrationRequestCopyWith<$Res> {
  factory _$$FinishRegistrationRequestImplCopyWith(
          _$FinishRegistrationRequestImpl value,
          $Res Function(_$FinishRegistrationRequestImpl) then) =
      __$$FinishRegistrationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, AttestationResponse attestationResponse});

  @override
  $AttestationResponseCopyWith<$Res> get attestationResponse;
}

/// @nodoc
class __$$FinishRegistrationRequestImplCopyWithImpl<$Res>
    extends _$FinishRegistrationRequestCopyWithImpl<$Res,
        _$FinishRegistrationRequestImpl>
    implements _$$FinishRegistrationRequestImplCopyWith<$Res> {
  __$$FinishRegistrationRequestImplCopyWithImpl(
      _$FinishRegistrationRequestImpl _value,
      $Res Function(_$FinishRegistrationRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of FinishRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? attestationResponse = null,
  }) {
    return _then(_$FinishRegistrationRequestImpl(
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
class _$FinishRegistrationRequestImpl implements _FinishRegistrationRequest {
  const _$FinishRegistrationRequestImpl(
      {required this.userId, required this.attestationResponse});

  factory _$FinishRegistrationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinishRegistrationRequestImplFromJson(json);

  @override
  final String userId;
  @override
  final AttestationResponse attestationResponse;

  @override
  String toString() {
    return 'FinishRegistrationRequest(userId: $userId, attestationResponse: $attestationResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinishRegistrationRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.attestationResponse, attestationResponse) ||
                other.attestationResponse == attestationResponse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, attestationResponse);

  /// Create a copy of FinishRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinishRegistrationRequestImplCopyWith<_$FinishRegistrationRequestImpl>
      get copyWith => __$$FinishRegistrationRequestImplCopyWithImpl<
          _$FinishRegistrationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinishRegistrationRequestImplToJson(
      this,
    );
  }
}

abstract class _FinishRegistrationRequest implements FinishRegistrationRequest {
  const factory _FinishRegistrationRequest(
          {required final String userId,
          required final AttestationResponse attestationResponse}) =
      _$FinishRegistrationRequestImpl;

  factory _FinishRegistrationRequest.fromJson(Map<String, dynamic> json) =
      _$FinishRegistrationRequestImpl.fromJson;

  @override
  String get userId;
  @override
  AttestationResponse get attestationResponse;

  /// Create a copy of FinishRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinishRegistrationRequestImplCopyWith<_$FinishRegistrationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
