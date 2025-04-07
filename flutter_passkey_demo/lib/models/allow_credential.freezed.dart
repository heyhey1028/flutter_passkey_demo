// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'allow_credential.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllowCredential _$AllowCredentialFromJson(Map<String, dynamic> json) {
  return _AllowCredential.fromJson(json);
}

/// @nodoc
mixin _$AllowCredential {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<String> get transports => throw _privateConstructorUsedError;

  /// Serializes this AllowCredential to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllowCredential
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllowCredentialCopyWith<AllowCredential> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllowCredentialCopyWith<$Res> {
  factory $AllowCredentialCopyWith(
          AllowCredential value, $Res Function(AllowCredential) then) =
      _$AllowCredentialCopyWithImpl<$Res, AllowCredential>;
  @useResult
  $Res call({String id, String type, List<String> transports});
}

/// @nodoc
class _$AllowCredentialCopyWithImpl<$Res, $Val extends AllowCredential>
    implements $AllowCredentialCopyWith<$Res> {
  _$AllowCredentialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllowCredential
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? transports = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      transports: null == transports
          ? _value.transports
          : transports // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllowCredentialImplCopyWith<$Res>
    implements $AllowCredentialCopyWith<$Res> {
  factory _$$AllowCredentialImplCopyWith(_$AllowCredentialImpl value,
          $Res Function(_$AllowCredentialImpl) then) =
      __$$AllowCredentialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String type, List<String> transports});
}

/// @nodoc
class __$$AllowCredentialImplCopyWithImpl<$Res>
    extends _$AllowCredentialCopyWithImpl<$Res, _$AllowCredentialImpl>
    implements _$$AllowCredentialImplCopyWith<$Res> {
  __$$AllowCredentialImplCopyWithImpl(
      _$AllowCredentialImpl _value, $Res Function(_$AllowCredentialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllowCredential
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? transports = null,
  }) {
    return _then(_$AllowCredentialImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      transports: null == transports
          ? _value._transports
          : transports // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllowCredentialImpl implements _AllowCredential {
  const _$AllowCredentialImpl(
      {required this.id,
      required this.type,
      required final List<String> transports})
      : _transports = transports;

  factory _$AllowCredentialImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllowCredentialImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  final List<String> _transports;
  @override
  List<String> get transports {
    if (_transports is EqualUnmodifiableListView) return _transports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transports);
  }

  @override
  String toString() {
    return 'AllowCredential(id: $id, type: $type, transports: $transports)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllowCredentialImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._transports, _transports));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, type, const DeepCollectionEquality().hash(_transports));

  /// Create a copy of AllowCredential
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllowCredentialImplCopyWith<_$AllowCredentialImpl> get copyWith =>
      __$$AllowCredentialImplCopyWithImpl<_$AllowCredentialImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllowCredentialImplToJson(
      this,
    );
  }
}

abstract class _AllowCredential implements AllowCredential {
  const factory _AllowCredential(
      {required final String id,
      required final String type,
      required final List<String> transports}) = _$AllowCredentialImpl;

  factory _AllowCredential.fromJson(Map<String, dynamic> json) =
      _$AllowCredentialImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  List<String> get transports;

  /// Create a copy of AllowCredential
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllowCredentialImplCopyWith<_$AllowCredentialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
