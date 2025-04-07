// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finish_registration_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FinishRegistrationResponse _$FinishRegistrationResponseFromJson(
    Map<String, dynamic> json) {
  return _FinishRegistrationResponse.fromJson(json);
}

/// @nodoc
mixin _$FinishRegistrationResponse {
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this FinishRegistrationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FinishRegistrationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinishRegistrationResponseCopyWith<FinishRegistrationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinishRegistrationResponseCopyWith<$Res> {
  factory $FinishRegistrationResponseCopyWith(FinishRegistrationResponse value,
          $Res Function(FinishRegistrationResponse) then) =
      _$FinishRegistrationResponseCopyWithImpl<$Res,
          FinishRegistrationResponse>;
  @useResult
  $Res call({String status, String message});
}

/// @nodoc
class _$FinishRegistrationResponseCopyWithImpl<$Res,
        $Val extends FinishRegistrationResponse>
    implements $FinishRegistrationResponseCopyWith<$Res> {
  _$FinishRegistrationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FinishRegistrationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FinishRegistrationResponseImplCopyWith<$Res>
    implements $FinishRegistrationResponseCopyWith<$Res> {
  factory _$$FinishRegistrationResponseImplCopyWith(
          _$FinishRegistrationResponseImpl value,
          $Res Function(_$FinishRegistrationResponseImpl) then) =
      __$$FinishRegistrationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String message});
}

/// @nodoc
class __$$FinishRegistrationResponseImplCopyWithImpl<$Res>
    extends _$FinishRegistrationResponseCopyWithImpl<$Res,
        _$FinishRegistrationResponseImpl>
    implements _$$FinishRegistrationResponseImplCopyWith<$Res> {
  __$$FinishRegistrationResponseImplCopyWithImpl(
      _$FinishRegistrationResponseImpl _value,
      $Res Function(_$FinishRegistrationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FinishRegistrationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$FinishRegistrationResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FinishRegistrationResponseImpl implements _FinishRegistrationResponse {
  const _$FinishRegistrationResponseImpl(
      {required this.status, required this.message});

  factory _$FinishRegistrationResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FinishRegistrationResponseImplFromJson(json);

  @override
  final String status;
  @override
  final String message;

  @override
  String toString() {
    return 'FinishRegistrationResponse(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinishRegistrationResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  /// Create a copy of FinishRegistrationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinishRegistrationResponseImplCopyWith<_$FinishRegistrationResponseImpl>
      get copyWith => __$$FinishRegistrationResponseImplCopyWithImpl<
          _$FinishRegistrationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinishRegistrationResponseImplToJson(
      this,
    );
  }
}

abstract class _FinishRegistrationResponse
    implements FinishRegistrationResponse {
  const factory _FinishRegistrationResponse(
      {required final String status,
      required final String message}) = _$FinishRegistrationResponseImpl;

  factory _FinishRegistrationResponse.fromJson(Map<String, dynamic> json) =
      _$FinishRegistrationResponseImpl.fromJson;

  @override
  String get status;
  @override
  String get message;

  /// Create a copy of FinishRegistrationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinishRegistrationResponseImplCopyWith<_$FinishRegistrationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
