// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'begin_registration_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BeginRegistrationResponse _$BeginRegistrationResponseFromJson(
    Map<String, dynamic> json) {
  return _BeginRegistrationResponse.fromJson(json);
}

/// @nodoc
mixin _$BeginRegistrationResponse {
  String get challenge => throw _privateConstructorUsedError;
  RelyingParty get rp => throw _privateConstructorUsedError;
  UserInfo get user => throw _privateConstructorUsedError;
  List<PubKeyCredParam> get pubKeyCredParams =>
      throw _privateConstructorUsedError;
  int get timeout => throw _privateConstructorUsedError;
  AuthenticatorSelection get authenticatorSelection =>
      throw _privateConstructorUsedError;
  String get attestation => throw _privateConstructorUsedError;

  /// Serializes this BeginRegistrationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BeginRegistrationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BeginRegistrationResponseCopyWith<BeginRegistrationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeginRegistrationResponseCopyWith<$Res> {
  factory $BeginRegistrationResponseCopyWith(BeginRegistrationResponse value,
          $Res Function(BeginRegistrationResponse) then) =
      _$BeginRegistrationResponseCopyWithImpl<$Res, BeginRegistrationResponse>;
  @useResult
  $Res call(
      {String challenge,
      RelyingParty rp,
      UserInfo user,
      List<PubKeyCredParam> pubKeyCredParams,
      int timeout,
      AuthenticatorSelection authenticatorSelection,
      String attestation});

  $RelyingPartyCopyWith<$Res> get rp;
  $UserInfoCopyWith<$Res> get user;
  $AuthenticatorSelectionCopyWith<$Res> get authenticatorSelection;
}

/// @nodoc
class _$BeginRegistrationResponseCopyWithImpl<$Res,
        $Val extends BeginRegistrationResponse>
    implements $BeginRegistrationResponseCopyWith<$Res> {
  _$BeginRegistrationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BeginRegistrationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challenge = null,
    Object? rp = null,
    Object? user = null,
    Object? pubKeyCredParams = null,
    Object? timeout = null,
    Object? authenticatorSelection = null,
    Object? attestation = null,
  }) {
    return _then(_value.copyWith(
      challenge: null == challenge
          ? _value.challenge
          : challenge // ignore: cast_nullable_to_non_nullable
              as String,
      rp: null == rp
          ? _value.rp
          : rp // ignore: cast_nullable_to_non_nullable
              as RelyingParty,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfo,
      pubKeyCredParams: null == pubKeyCredParams
          ? _value.pubKeyCredParams
          : pubKeyCredParams // ignore: cast_nullable_to_non_nullable
              as List<PubKeyCredParam>,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as int,
      authenticatorSelection: null == authenticatorSelection
          ? _value.authenticatorSelection
          : authenticatorSelection // ignore: cast_nullable_to_non_nullable
              as AuthenticatorSelection,
      attestation: null == attestation
          ? _value.attestation
          : attestation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of BeginRegistrationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RelyingPartyCopyWith<$Res> get rp {
    return $RelyingPartyCopyWith<$Res>(_value.rp, (value) {
      return _then(_value.copyWith(rp: value) as $Val);
    });
  }

  /// Create a copy of BeginRegistrationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserInfoCopyWith<$Res> get user {
    return $UserInfoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of BeginRegistrationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthenticatorSelectionCopyWith<$Res> get authenticatorSelection {
    return $AuthenticatorSelectionCopyWith<$Res>(_value.authenticatorSelection,
        (value) {
      return _then(_value.copyWith(authenticatorSelection: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BeginRegistrationResponseImplCopyWith<$Res>
    implements $BeginRegistrationResponseCopyWith<$Res> {
  factory _$$BeginRegistrationResponseImplCopyWith(
          _$BeginRegistrationResponseImpl value,
          $Res Function(_$BeginRegistrationResponseImpl) then) =
      __$$BeginRegistrationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String challenge,
      RelyingParty rp,
      UserInfo user,
      List<PubKeyCredParam> pubKeyCredParams,
      int timeout,
      AuthenticatorSelection authenticatorSelection,
      String attestation});

  @override
  $RelyingPartyCopyWith<$Res> get rp;
  @override
  $UserInfoCopyWith<$Res> get user;
  @override
  $AuthenticatorSelectionCopyWith<$Res> get authenticatorSelection;
}

/// @nodoc
class __$$BeginRegistrationResponseImplCopyWithImpl<$Res>
    extends _$BeginRegistrationResponseCopyWithImpl<$Res,
        _$BeginRegistrationResponseImpl>
    implements _$$BeginRegistrationResponseImplCopyWith<$Res> {
  __$$BeginRegistrationResponseImplCopyWithImpl(
      _$BeginRegistrationResponseImpl _value,
      $Res Function(_$BeginRegistrationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BeginRegistrationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challenge = null,
    Object? rp = null,
    Object? user = null,
    Object? pubKeyCredParams = null,
    Object? timeout = null,
    Object? authenticatorSelection = null,
    Object? attestation = null,
  }) {
    return _then(_$BeginRegistrationResponseImpl(
      challenge: null == challenge
          ? _value.challenge
          : challenge // ignore: cast_nullable_to_non_nullable
              as String,
      rp: null == rp
          ? _value.rp
          : rp // ignore: cast_nullable_to_non_nullable
              as RelyingParty,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfo,
      pubKeyCredParams: null == pubKeyCredParams
          ? _value._pubKeyCredParams
          : pubKeyCredParams // ignore: cast_nullable_to_non_nullable
              as List<PubKeyCredParam>,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as int,
      authenticatorSelection: null == authenticatorSelection
          ? _value.authenticatorSelection
          : authenticatorSelection // ignore: cast_nullable_to_non_nullable
              as AuthenticatorSelection,
      attestation: null == attestation
          ? _value.attestation
          : attestation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeginRegistrationResponseImpl implements _BeginRegistrationResponse {
  const _$BeginRegistrationResponseImpl(
      {required this.challenge,
      required this.rp,
      required this.user,
      required final List<PubKeyCredParam> pubKeyCredParams,
      required this.timeout,
      required this.authenticatorSelection,
      required this.attestation})
      : _pubKeyCredParams = pubKeyCredParams;

  factory _$BeginRegistrationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeginRegistrationResponseImplFromJson(json);

  @override
  final String challenge;
  @override
  final RelyingParty rp;
  @override
  final UserInfo user;
  final List<PubKeyCredParam> _pubKeyCredParams;
  @override
  List<PubKeyCredParam> get pubKeyCredParams {
    if (_pubKeyCredParams is EqualUnmodifiableListView)
      return _pubKeyCredParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pubKeyCredParams);
  }

  @override
  final int timeout;
  @override
  final AuthenticatorSelection authenticatorSelection;
  @override
  final String attestation;

  @override
  String toString() {
    return 'BeginRegistrationResponse(challenge: $challenge, rp: $rp, user: $user, pubKeyCredParams: $pubKeyCredParams, timeout: $timeout, authenticatorSelection: $authenticatorSelection, attestation: $attestation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeginRegistrationResponseImpl &&
            (identical(other.challenge, challenge) ||
                other.challenge == challenge) &&
            (identical(other.rp, rp) || other.rp == rp) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._pubKeyCredParams, _pubKeyCredParams) &&
            (identical(other.timeout, timeout) || other.timeout == timeout) &&
            (identical(other.authenticatorSelection, authenticatorSelection) ||
                other.authenticatorSelection == authenticatorSelection) &&
            (identical(other.attestation, attestation) ||
                other.attestation == attestation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      challenge,
      rp,
      user,
      const DeepCollectionEquality().hash(_pubKeyCredParams),
      timeout,
      authenticatorSelection,
      attestation);

  /// Create a copy of BeginRegistrationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BeginRegistrationResponseImplCopyWith<_$BeginRegistrationResponseImpl>
      get copyWith => __$$BeginRegistrationResponseImplCopyWithImpl<
          _$BeginRegistrationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeginRegistrationResponseImplToJson(
      this,
    );
  }
}

abstract class _BeginRegistrationResponse implements BeginRegistrationResponse {
  const factory _BeginRegistrationResponse(
      {required final String challenge,
      required final RelyingParty rp,
      required final UserInfo user,
      required final List<PubKeyCredParam> pubKeyCredParams,
      required final int timeout,
      required final AuthenticatorSelection authenticatorSelection,
      required final String attestation}) = _$BeginRegistrationResponseImpl;

  factory _BeginRegistrationResponse.fromJson(Map<String, dynamic> json) =
      _$BeginRegistrationResponseImpl.fromJson;

  @override
  String get challenge;
  @override
  RelyingParty get rp;
  @override
  UserInfo get user;
  @override
  List<PubKeyCredParam> get pubKeyCredParams;
  @override
  int get timeout;
  @override
  AuthenticatorSelection get authenticatorSelection;
  @override
  String get attestation;

  /// Create a copy of BeginRegistrationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BeginRegistrationResponseImplCopyWith<_$BeginRegistrationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
