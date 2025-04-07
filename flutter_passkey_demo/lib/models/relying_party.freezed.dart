// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relying_party.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RelyingParty _$RelyingPartyFromJson(Map<String, dynamic> json) {
  return _RelyingParty.fromJson(json);
}

/// @nodoc
mixin _$RelyingParty {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  /// Serializes this RelyingParty to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RelyingParty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RelyingPartyCopyWith<RelyingParty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelyingPartyCopyWith<$Res> {
  factory $RelyingPartyCopyWith(
          RelyingParty value, $Res Function(RelyingParty) then) =
      _$RelyingPartyCopyWithImpl<$Res, RelyingParty>;
  @useResult
  $Res call({String name, String id});
}

/// @nodoc
class _$RelyingPartyCopyWithImpl<$Res, $Val extends RelyingParty>
    implements $RelyingPartyCopyWith<$Res> {
  _$RelyingPartyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RelyingParty
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RelyingPartyImplCopyWith<$Res>
    implements $RelyingPartyCopyWith<$Res> {
  factory _$$RelyingPartyImplCopyWith(
          _$RelyingPartyImpl value, $Res Function(_$RelyingPartyImpl) then) =
      __$$RelyingPartyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String id});
}

/// @nodoc
class __$$RelyingPartyImplCopyWithImpl<$Res>
    extends _$RelyingPartyCopyWithImpl<$Res, _$RelyingPartyImpl>
    implements _$$RelyingPartyImplCopyWith<$Res> {
  __$$RelyingPartyImplCopyWithImpl(
      _$RelyingPartyImpl _value, $Res Function(_$RelyingPartyImpl) _then)
      : super(_value, _then);

  /// Create a copy of RelyingParty
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_$RelyingPartyImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RelyingPartyImpl implements _RelyingParty {
  const _$RelyingPartyImpl({required this.name, required this.id});

  factory _$RelyingPartyImpl.fromJson(Map<String, dynamic> json) =>
      _$$RelyingPartyImplFromJson(json);

  @override
  final String name;
  @override
  final String id;

  @override
  String toString() {
    return 'RelyingParty(name: $name, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelyingPartyImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  /// Create a copy of RelyingParty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RelyingPartyImplCopyWith<_$RelyingPartyImpl> get copyWith =>
      __$$RelyingPartyImplCopyWithImpl<_$RelyingPartyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RelyingPartyImplToJson(
      this,
    );
  }
}

abstract class _RelyingParty implements RelyingParty {
  const factory _RelyingParty(
      {required final String name,
      required final String id}) = _$RelyingPartyImpl;

  factory _RelyingParty.fromJson(Map<String, dynamic> json) =
      _$RelyingPartyImpl.fromJson;

  @override
  String get name;
  @override
  String get id;

  /// Create a copy of RelyingParty
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RelyingPartyImplCopyWith<_$RelyingPartyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
