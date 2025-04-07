// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'begin_authentication_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BeginAuthenticationResponse _$BeginAuthenticationResponseFromJson(
    Map<String, dynamic> json) {
  return _BeginAuthenticationResponse.fromJson(json);
}

/// @nodoc
mixin _$BeginAuthenticationResponse {
  String get challenge => throw _privateConstructorUsedError;
  String get rpId => throw _privateConstructorUsedError;
  List<AllowCredential> get allowCredentials =>
      throw _privateConstructorUsedError;
  int get timeout => throw _privateConstructorUsedError;
  String get userVerification => throw _privateConstructorUsedError;

  /// Serializes this BeginAuthenticationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BeginAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BeginAuthenticationResponseCopyWith<BeginAuthenticationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeginAuthenticationResponseCopyWith<$Res> {
  factory $BeginAuthenticationResponseCopyWith(
          BeginAuthenticationResponse value,
          $Res Function(BeginAuthenticationResponse) then) =
      _$BeginAuthenticationResponseCopyWithImpl<$Res,
          BeginAuthenticationResponse>;
  @useResult
  $Res call(
      {String challenge,
      String rpId,
      List<AllowCredential> allowCredentials,
      int timeout,
      String userVerification});
}

/// @nodoc
class _$BeginAuthenticationResponseCopyWithImpl<$Res,
        $Val extends BeginAuthenticationResponse>
    implements $BeginAuthenticationResponseCopyWith<$Res> {
  _$BeginAuthenticationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BeginAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challenge = null,
    Object? rpId = null,
    Object? allowCredentials = null,
    Object? timeout = null,
    Object? userVerification = null,
  }) {
    return _then(_value.copyWith(
      challenge: null == challenge
          ? _value.challenge
          : challenge // ignore: cast_nullable_to_non_nullable
              as String,
      rpId: null == rpId
          ? _value.rpId
          : rpId // ignore: cast_nullable_to_non_nullable
              as String,
      allowCredentials: null == allowCredentials
          ? _value.allowCredentials
          : allowCredentials // ignore: cast_nullable_to_non_nullable
              as List<AllowCredential>,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as int,
      userVerification: null == userVerification
          ? _value.userVerification
          : userVerification // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeginAuthenticationResponseImplCopyWith<$Res>
    implements $BeginAuthenticationResponseCopyWith<$Res> {
  factory _$$BeginAuthenticationResponseImplCopyWith(
          _$BeginAuthenticationResponseImpl value,
          $Res Function(_$BeginAuthenticationResponseImpl) then) =
      __$$BeginAuthenticationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String challenge,
      String rpId,
      List<AllowCredential> allowCredentials,
      int timeout,
      String userVerification});
}

/// @nodoc
class __$$BeginAuthenticationResponseImplCopyWithImpl<$Res>
    extends _$BeginAuthenticationResponseCopyWithImpl<$Res,
        _$BeginAuthenticationResponseImpl>
    implements _$$BeginAuthenticationResponseImplCopyWith<$Res> {
  __$$BeginAuthenticationResponseImplCopyWithImpl(
      _$BeginAuthenticationResponseImpl _value,
      $Res Function(_$BeginAuthenticationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BeginAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challenge = null,
    Object? rpId = null,
    Object? allowCredentials = null,
    Object? timeout = null,
    Object? userVerification = null,
  }) {
    return _then(_$BeginAuthenticationResponseImpl(
      challenge: null == challenge
          ? _value.challenge
          : challenge // ignore: cast_nullable_to_non_nullable
              as String,
      rpId: null == rpId
          ? _value.rpId
          : rpId // ignore: cast_nullable_to_non_nullable
              as String,
      allowCredentials: null == allowCredentials
          ? _value._allowCredentials
          : allowCredentials // ignore: cast_nullable_to_non_nullable
              as List<AllowCredential>,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as int,
      userVerification: null == userVerification
          ? _value.userVerification
          : userVerification // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeginAuthenticationResponseImpl
    implements _BeginAuthenticationResponse {
  const _$BeginAuthenticationResponseImpl(
      {required this.challenge,
      required this.rpId,
      required final List<AllowCredential> allowCredentials,
      required this.timeout,
      required this.userVerification})
      : _allowCredentials = allowCredentials;

  factory _$BeginAuthenticationResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BeginAuthenticationResponseImplFromJson(json);

  @override
  final String challenge;
  @override
  final String rpId;
  final List<AllowCredential> _allowCredentials;
  @override
  List<AllowCredential> get allowCredentials {
    if (_allowCredentials is EqualUnmodifiableListView)
      return _allowCredentials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowCredentials);
  }

  @override
  final int timeout;
  @override
  final String userVerification;

  @override
  String toString() {
    return 'BeginAuthenticationResponse(challenge: $challenge, rpId: $rpId, allowCredentials: $allowCredentials, timeout: $timeout, userVerification: $userVerification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeginAuthenticationResponseImpl &&
            (identical(other.challenge, challenge) ||
                other.challenge == challenge) &&
            (identical(other.rpId, rpId) || other.rpId == rpId) &&
            const DeepCollectionEquality()
                .equals(other._allowCredentials, _allowCredentials) &&
            (identical(other.timeout, timeout) || other.timeout == timeout) &&
            (identical(other.userVerification, userVerification) ||
                other.userVerification == userVerification));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      challenge,
      rpId,
      const DeepCollectionEquality().hash(_allowCredentials),
      timeout,
      userVerification);

  /// Create a copy of BeginAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BeginAuthenticationResponseImplCopyWith<_$BeginAuthenticationResponseImpl>
      get copyWith => __$$BeginAuthenticationResponseImplCopyWithImpl<
          _$BeginAuthenticationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeginAuthenticationResponseImplToJson(
      this,
    );
  }
}

abstract class _BeginAuthenticationResponse
    implements BeginAuthenticationResponse {
  const factory _BeginAuthenticationResponse(
          {required final String challenge,
          required final String rpId,
          required final List<AllowCredential> allowCredentials,
          required final int timeout,
          required final String userVerification}) =
      _$BeginAuthenticationResponseImpl;

  factory _BeginAuthenticationResponse.fromJson(Map<String, dynamic> json) =
      _$BeginAuthenticationResponseImpl.fromJson;

  @override
  String get challenge;
  @override
  String get rpId;
  @override
  List<AllowCredential> get allowCredentials;
  @override
  int get timeout;
  @override
  String get userVerification;

  /// Create a copy of BeginAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BeginAuthenticationResponseImplCopyWith<_$BeginAuthenticationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
