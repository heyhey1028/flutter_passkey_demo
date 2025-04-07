// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticator_selection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthenticatorSelection _$AuthenticatorSelectionFromJson(
    Map<String, dynamic> json) {
  return _AuthenticatorSelection.fromJson(json);
}

/// @nodoc
mixin _$AuthenticatorSelection {
  String get authenticatorAttachment => throw _privateConstructorUsedError;
  bool get requireResidentKey => throw _privateConstructorUsedError;
  String get userVerification => throw _privateConstructorUsedError;

  /// Serializes this AuthenticatorSelection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthenticatorSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthenticatorSelectionCopyWith<AuthenticatorSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatorSelectionCopyWith<$Res> {
  factory $AuthenticatorSelectionCopyWith(AuthenticatorSelection value,
          $Res Function(AuthenticatorSelection) then) =
      _$AuthenticatorSelectionCopyWithImpl<$Res, AuthenticatorSelection>;
  @useResult
  $Res call(
      {String authenticatorAttachment,
      bool requireResidentKey,
      String userVerification});
}

/// @nodoc
class _$AuthenticatorSelectionCopyWithImpl<$Res,
        $Val extends AuthenticatorSelection>
    implements $AuthenticatorSelectionCopyWith<$Res> {
  _$AuthenticatorSelectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticatorSelection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticatorAttachment = null,
    Object? requireResidentKey = null,
    Object? userVerification = null,
  }) {
    return _then(_value.copyWith(
      authenticatorAttachment: null == authenticatorAttachment
          ? _value.authenticatorAttachment
          : authenticatorAttachment // ignore: cast_nullable_to_non_nullable
              as String,
      requireResidentKey: null == requireResidentKey
          ? _value.requireResidentKey
          : requireResidentKey // ignore: cast_nullable_to_non_nullable
              as bool,
      userVerification: null == userVerification
          ? _value.userVerification
          : userVerification // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticatorSelectionImplCopyWith<$Res>
    implements $AuthenticatorSelectionCopyWith<$Res> {
  factory _$$AuthenticatorSelectionImplCopyWith(
          _$AuthenticatorSelectionImpl value,
          $Res Function(_$AuthenticatorSelectionImpl) then) =
      __$$AuthenticatorSelectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String authenticatorAttachment,
      bool requireResidentKey,
      String userVerification});
}

/// @nodoc
class __$$AuthenticatorSelectionImplCopyWithImpl<$Res>
    extends _$AuthenticatorSelectionCopyWithImpl<$Res,
        _$AuthenticatorSelectionImpl>
    implements _$$AuthenticatorSelectionImplCopyWith<$Res> {
  __$$AuthenticatorSelectionImplCopyWithImpl(
      _$AuthenticatorSelectionImpl _value,
      $Res Function(_$AuthenticatorSelectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticatorSelection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticatorAttachment = null,
    Object? requireResidentKey = null,
    Object? userVerification = null,
  }) {
    return _then(_$AuthenticatorSelectionImpl(
      authenticatorAttachment: null == authenticatorAttachment
          ? _value.authenticatorAttachment
          : authenticatorAttachment // ignore: cast_nullable_to_non_nullable
              as String,
      requireResidentKey: null == requireResidentKey
          ? _value.requireResidentKey
          : requireResidentKey // ignore: cast_nullable_to_non_nullable
              as bool,
      userVerification: null == userVerification
          ? _value.userVerification
          : userVerification // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticatorSelectionImpl implements _AuthenticatorSelection {
  const _$AuthenticatorSelectionImpl(
      {required this.authenticatorAttachment,
      required this.requireResidentKey,
      required this.userVerification});

  factory _$AuthenticatorSelectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticatorSelectionImplFromJson(json);

  @override
  final String authenticatorAttachment;
  @override
  final bool requireResidentKey;
  @override
  final String userVerification;

  @override
  String toString() {
    return 'AuthenticatorSelection(authenticatorAttachment: $authenticatorAttachment, requireResidentKey: $requireResidentKey, userVerification: $userVerification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatorSelectionImpl &&
            (identical(
                    other.authenticatorAttachment, authenticatorAttachment) ||
                other.authenticatorAttachment == authenticatorAttachment) &&
            (identical(other.requireResidentKey, requireResidentKey) ||
                other.requireResidentKey == requireResidentKey) &&
            (identical(other.userVerification, userVerification) ||
                other.userVerification == userVerification));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, authenticatorAttachment,
      requireResidentKey, userVerification);

  /// Create a copy of AuthenticatorSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatorSelectionImplCopyWith<_$AuthenticatorSelectionImpl>
      get copyWith => __$$AuthenticatorSelectionImplCopyWithImpl<
          _$AuthenticatorSelectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticatorSelectionImplToJson(
      this,
    );
  }
}

abstract class _AuthenticatorSelection implements AuthenticatorSelection {
  const factory _AuthenticatorSelection(
      {required final String authenticatorAttachment,
      required final bool requireResidentKey,
      required final String userVerification}) = _$AuthenticatorSelectionImpl;

  factory _AuthenticatorSelection.fromJson(Map<String, dynamic> json) =
      _$AuthenticatorSelectionImpl.fromJson;

  @override
  String get authenticatorAttachment;
  @override
  bool get requireResidentKey;
  @override
  String get userVerification;

  /// Create a copy of AuthenticatorSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticatorSelectionImplCopyWith<_$AuthenticatorSelectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
