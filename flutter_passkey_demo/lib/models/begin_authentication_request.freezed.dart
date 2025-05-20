// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'begin_authentication_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BeginAuthenticationRequest _$BeginAuthenticationRequestFromJson(
    Map<String, dynamic> json) {
  return _BeginAuthenticationRequest.fromJson(json);
}

/// @nodoc
mixin _$BeginAuthenticationRequest {
  /// Serializes this BeginAuthenticationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeginAuthenticationRequestCopyWith<$Res> {
  factory $BeginAuthenticationRequestCopyWith(BeginAuthenticationRequest value,
          $Res Function(BeginAuthenticationRequest) then) =
      _$BeginAuthenticationRequestCopyWithImpl<$Res,
          BeginAuthenticationRequest>;
}

/// @nodoc
class _$BeginAuthenticationRequestCopyWithImpl<$Res,
        $Val extends BeginAuthenticationRequest>
    implements $BeginAuthenticationRequestCopyWith<$Res> {
  _$BeginAuthenticationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BeginAuthenticationRequest
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BeginAuthenticationRequestImplCopyWith<$Res> {
  factory _$$BeginAuthenticationRequestImplCopyWith(
          _$BeginAuthenticationRequestImpl value,
          $Res Function(_$BeginAuthenticationRequestImpl) then) =
      __$$BeginAuthenticationRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BeginAuthenticationRequestImplCopyWithImpl<$Res>
    extends _$BeginAuthenticationRequestCopyWithImpl<$Res,
        _$BeginAuthenticationRequestImpl>
    implements _$$BeginAuthenticationRequestImplCopyWith<$Res> {
  __$$BeginAuthenticationRequestImplCopyWithImpl(
      _$BeginAuthenticationRequestImpl _value,
      $Res Function(_$BeginAuthenticationRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of BeginAuthenticationRequest
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$BeginAuthenticationRequestImpl implements _BeginAuthenticationRequest {
  const _$BeginAuthenticationRequestImpl();

  factory _$BeginAuthenticationRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BeginAuthenticationRequestImplFromJson(json);

  @override
  String toString() {
    return 'BeginAuthenticationRequest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeginAuthenticationRequestImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$BeginAuthenticationRequestImplToJson(
      this,
    );
  }
}

abstract class _BeginAuthenticationRequest
    implements BeginAuthenticationRequest {
  const factory _BeginAuthenticationRequest() =
      _$BeginAuthenticationRequestImpl;

  factory _BeginAuthenticationRequest.fromJson(Map<String, dynamic> json) =
      _$BeginAuthenticationRequestImpl.fromJson;
}
