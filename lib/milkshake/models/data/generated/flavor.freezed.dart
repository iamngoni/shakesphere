// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../flavor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Flavor _$FlavorFromJson(Map<String, dynamic> json) {
  return _Flavor.fromJson(json);
}

/// @nodoc
mixin _$Flavor {
  int get flavorId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get cost => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlavorCopyWith<Flavor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlavorCopyWith<$Res> {
  factory $FlavorCopyWith(Flavor value, $Res Function(Flavor) then) =
      _$FlavorCopyWithImpl<$Res, Flavor>;
  @useResult
  $Res call(
      {int flavorId,
      String name,
      double cost,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$FlavorCopyWithImpl<$Res, $Val extends Flavor>
    implements $FlavorCopyWith<$Res> {
  _$FlavorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavorId = null,
    Object? name = null,
    Object? cost = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      flavorId: null == flavorId
          ? _value.flavorId
          : flavorId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlavorImplCopyWith<$Res> implements $FlavorCopyWith<$Res> {
  factory _$$FlavorImplCopyWith(
          _$FlavorImpl value, $Res Function(_$FlavorImpl) then) =
      __$$FlavorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int flavorId,
      String name,
      double cost,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$FlavorImplCopyWithImpl<$Res>
    extends _$FlavorCopyWithImpl<$Res, _$FlavorImpl>
    implements _$$FlavorImplCopyWith<$Res> {
  __$$FlavorImplCopyWithImpl(
      _$FlavorImpl _value, $Res Function(_$FlavorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavorId = null,
    Object? name = null,
    Object? cost = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$FlavorImpl(
      flavorId: null == flavorId
          ? _value.flavorId
          : flavorId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlavorImpl extends _Flavor {
  const _$FlavorImpl(
      {required this.flavorId,
      required this.name,
      required this.cost,
      required this.createdAt,
      required this.updatedAt})
      : super._();

  factory _$FlavorImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlavorImplFromJson(json);

  @override
  final int flavorId;
  @override
  final String name;
  @override
  final double cost;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Flavor(flavorId: $flavorId, name: $name, cost: $cost, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlavorImpl &&
            (identical(other.flavorId, flavorId) ||
                other.flavorId == flavorId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, flavorId, name, cost, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlavorImplCopyWith<_$FlavorImpl> get copyWith =>
      __$$FlavorImplCopyWithImpl<_$FlavorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlavorImplToJson(
      this,
    );
  }
}

abstract class _Flavor extends Flavor {
  const factory _Flavor(
      {required final int flavorId,
      required final String name,
      required final double cost,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$FlavorImpl;
  const _Flavor._() : super._();

  factory _Flavor.fromJson(Map<String, dynamic> json) = _$FlavorImpl.fromJson;

  @override
  int get flavorId;
  @override
  String get name;
  @override
  double get cost;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$FlavorImplCopyWith<_$FlavorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
