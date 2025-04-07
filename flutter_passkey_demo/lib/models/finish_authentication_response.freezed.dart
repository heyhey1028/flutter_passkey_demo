// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finish_authentication_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FinishAuthenticationResponse _$FinishAuthenticationResponseFromJson(
    Map<String, dynamic> json) {
  return _FinishAuthenticationResponse.fromJson(json);
}

/// @nodoc
mixin _$FinishAuthenticationResponse {
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get firebaseToken => throw _privateConstructorUsedError;

  /// Serializes this FinishAuthenticationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FinishAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinishAuthenticationResponseCopyWith<FinishAuthenticationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinishAuthenticationResponseCopyWith<$Res> {
  factory $FinishAuthenticationResponseCopyWith(
          FinishAuthenticationResponse value,
          $Res Function(FinishAuthenticationResponse) then) =
      _$FinishAuthenticationResponseCopyWithImpl<$Res,
          FinishAuthenticationResponse>;
  @useResult
  $Res call({String status, String message, String firebaseToken});
}

/// @nodoc
class _$FinishAuthenticationResponseCopyWithImpl<$Res,
        $Val extends FinishAuthenticationResponse>
    implements $FinishAuthenticationResponseCopyWith<$Res> {
  _$FinishAuthenticationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FinishAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? firebaseToken = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseToken: null == firebaseToken
          ? _value.firebaseToken
          : firebaseToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FinishAuthenticationResponseImplCopyWith<$Res>
    implements $FinishAuthenticationResponseCopyWith<$Res> {
  factory _$$FinishAuthenticationResponseImplCopyWith(
          _$FinishAuthenticationResponseImpl value,
          $Res Function(_$FinishAuthenticationResponseImpl) then) =
      __$$FinishAuthenticationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String message, String firebaseToken});
}

/// @nodoc
class __$$FinishAuthenticationResponseImplCopyWithImpl<$Res>
    extends _$FinishAuthenticationResponseCopyWithImpl<$Res,
        _$FinishAuthenticationResponseImpl>
    implements _$$FinishAuthenticationResponseImplCopyWith<$Res> {
  __$$FinishAuthenticationResponseImplCopyWithImpl(
      _$FinishAuthenticationResponseImpl _value,
      $Res Function(_$FinishAuthenticationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FinishAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? firebaseToken = null,
  }) {
    return _then(_$FinishAuthenticationResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseToken: null == firebaseToken
          ? _value.firebaseToken
          : firebaseToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FinishAuthenticationResponseImpl
    implements _FinishAuthenticationResponse {
  const _$FinishAuthenticationResponseImpl(
      {required this.status,
      required this.message,
      required this.firebaseToken});

  factory _$FinishAuthenticationResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FinishAuthenticationResponseImplFromJson(json);

  @override
  final String status;
  @override
  final String message;
  @override
  final String firebaseToken;

  @override
  String toString() {
    return 'FinishAuthenticationResponse(status: $status, message: $message, firebaseToken: $firebaseToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinishAuthenticationResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.firebaseToken, firebaseToken) ||
                other.firebaseToken == firebaseToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, firebaseToken);

  /// Create a copy of FinishAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinishAuthenticationResponseImplCopyWith<
          _$FinishAuthenticationResponseImpl>
      get copyWith => __$$FinishAuthenticationResponseImplCopyWithImpl<
          _$FinishAuthenticationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinishAuthenticationResponseImplToJson(
      this,
    );
  }
}

abstract class _FinishAuthenticationResponse
    implements FinishAuthenticationResponse {
  const factory _FinishAuthenticationResponse(
          {required final String status,
          required final String message,
          required final String firebaseToken}) =
      _$FinishAuthenticationResponseImpl;

  factory _FinishAuthenticationResponse.fromJson(Map<String, dynamic> json) =
      _$FinishAuthenticationResponseImpl.fromJson;

  @override
  String get status;
  @override
  String get message;
  @override
  String get firebaseToken;

  /// Create a copy of FinishAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinishAuthenticationResponseImplCopyWith<
          _$FinishAuthenticationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
