// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'begin_registration_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BeginRegistrationRequest _$BeginRegistrationRequestFromJson(
    Map<String, dynamic> json) {
  return _BeginRegistrationRequest.fromJson(json);
}

/// @nodoc
mixin _$BeginRegistrationRequest {
  String get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;

  /// Serializes this BeginRegistrationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BeginRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BeginRegistrationRequestCopyWith<BeginRegistrationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeginRegistrationRequestCopyWith<$Res> {
  factory $BeginRegistrationRequestCopyWith(BeginRegistrationRequest value,
          $Res Function(BeginRegistrationRequest) then) =
      _$BeginRegistrationRequestCopyWithImpl<$Res, BeginRegistrationRequest>;
  @useResult
  $Res call({String userId, String username, String displayName});
}

/// @nodoc
class _$BeginRegistrationRequestCopyWithImpl<$Res,
        $Val extends BeginRegistrationRequest>
    implements $BeginRegistrationRequestCopyWith<$Res> {
  _$BeginRegistrationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BeginRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? displayName = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeginRegistrationRequestImplCopyWith<$Res>
    implements $BeginRegistrationRequestCopyWith<$Res> {
  factory _$$BeginRegistrationRequestImplCopyWith(
          _$BeginRegistrationRequestImpl value,
          $Res Function(_$BeginRegistrationRequestImpl) then) =
      __$$BeginRegistrationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String username, String displayName});
}

/// @nodoc
class __$$BeginRegistrationRequestImplCopyWithImpl<$Res>
    extends _$BeginRegistrationRequestCopyWithImpl<$Res,
        _$BeginRegistrationRequestImpl>
    implements _$$BeginRegistrationRequestImplCopyWith<$Res> {
  __$$BeginRegistrationRequestImplCopyWithImpl(
      _$BeginRegistrationRequestImpl _value,
      $Res Function(_$BeginRegistrationRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of BeginRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? displayName = null,
  }) {
    return _then(_$BeginRegistrationRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeginRegistrationRequestImpl implements _BeginRegistrationRequest {
  const _$BeginRegistrationRequestImpl(
      {required this.userId,
      required this.username,
      required this.displayName});

  factory _$BeginRegistrationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeginRegistrationRequestImplFromJson(json);

  @override
  final String userId;
  @override
  final String username;
  @override
  final String displayName;

  @override
  String toString() {
    return 'BeginRegistrationRequest(userId: $userId, username: $username, displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeginRegistrationRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, username, displayName);

  /// Create a copy of BeginRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BeginRegistrationRequestImplCopyWith<_$BeginRegistrationRequestImpl>
      get copyWith => __$$BeginRegistrationRequestImplCopyWithImpl<
          _$BeginRegistrationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeginRegistrationRequestImplToJson(
      this,
    );
  }
}

abstract class _BeginRegistrationRequest implements BeginRegistrationRequest {
  const factory _BeginRegistrationRequest(
      {required final String userId,
      required final String username,
      required final String displayName}) = _$BeginRegistrationRequestImpl;

  factory _BeginRegistrationRequest.fromJson(Map<String, dynamic> json) =
      _$BeginRegistrationRequestImpl.fromJson;

  @override
  String get userId;
  @override
  String get username;
  @override
  String get displayName;

  /// Create a copy of BeginRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BeginRegistrationRequestImplCopyWith<_$BeginRegistrationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
