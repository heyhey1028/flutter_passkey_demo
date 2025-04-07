// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pub_key_cred_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PubKeyCredParam _$PubKeyCredParamFromJson(Map<String, dynamic> json) {
  return _PubKeyCredParam.fromJson(json);
}

/// @nodoc
mixin _$PubKeyCredParam {
  String get type => throw _privateConstructorUsedError;
  int get alg => throw _privateConstructorUsedError;

  /// Serializes this PubKeyCredParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PubKeyCredParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PubKeyCredParamCopyWith<PubKeyCredParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PubKeyCredParamCopyWith<$Res> {
  factory $PubKeyCredParamCopyWith(
          PubKeyCredParam value, $Res Function(PubKeyCredParam) then) =
      _$PubKeyCredParamCopyWithImpl<$Res, PubKeyCredParam>;
  @useResult
  $Res call({String type, int alg});
}

/// @nodoc
class _$PubKeyCredParamCopyWithImpl<$Res, $Val extends PubKeyCredParam>
    implements $PubKeyCredParamCopyWith<$Res> {
  _$PubKeyCredParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PubKeyCredParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? alg = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      alg: null == alg
          ? _value.alg
          : alg // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PubKeyCredParamImplCopyWith<$Res>
    implements $PubKeyCredParamCopyWith<$Res> {
  factory _$$PubKeyCredParamImplCopyWith(_$PubKeyCredParamImpl value,
          $Res Function(_$PubKeyCredParamImpl) then) =
      __$$PubKeyCredParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, int alg});
}

/// @nodoc
class __$$PubKeyCredParamImplCopyWithImpl<$Res>
    extends _$PubKeyCredParamCopyWithImpl<$Res, _$PubKeyCredParamImpl>
    implements _$$PubKeyCredParamImplCopyWith<$Res> {
  __$$PubKeyCredParamImplCopyWithImpl(
      _$PubKeyCredParamImpl _value, $Res Function(_$PubKeyCredParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of PubKeyCredParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? alg = null,
  }) {
    return _then(_$PubKeyCredParamImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      alg: null == alg
          ? _value.alg
          : alg // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PubKeyCredParamImpl implements _PubKeyCredParam {
  const _$PubKeyCredParamImpl({required this.type, required this.alg});

  factory _$PubKeyCredParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$PubKeyCredParamImplFromJson(json);

  @override
  final String type;
  @override
  final int alg;

  @override
  String toString() {
    return 'PubKeyCredParam(type: $type, alg: $alg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PubKeyCredParamImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.alg, alg) || other.alg == alg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, alg);

  /// Create a copy of PubKeyCredParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PubKeyCredParamImplCopyWith<_$PubKeyCredParamImpl> get copyWith =>
      __$$PubKeyCredParamImplCopyWithImpl<_$PubKeyCredParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PubKeyCredParamImplToJson(
      this,
    );
  }
}

abstract class _PubKeyCredParam implements PubKeyCredParam {
  const factory _PubKeyCredParam(
      {required final String type,
      required final int alg}) = _$PubKeyCredParamImpl;

  factory _PubKeyCredParam.fromJson(Map<String, dynamic> json) =
      _$PubKeyCredParamImpl.fromJson;

  @override
  String get type;
  @override
  int get alg;

  /// Create a copy of PubKeyCredParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PubKeyCredParamImplCopyWith<_$PubKeyCredParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
