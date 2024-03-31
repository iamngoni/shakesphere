// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../thickness.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Thickness _$ThicknessFromJson(Map<String, dynamic> json) {
  return _Thickness.fromJson(json);
}

/// @nodoc
mixin _$Thickness {
  int get thicknessId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get cost => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThicknessCopyWith<Thickness> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThicknessCopyWith<$Res> {
  factory $ThicknessCopyWith(Thickness value, $Res Function(Thickness) then) =
      _$ThicknessCopyWithImpl<$Res, Thickness>;
  @useResult
  $Res call(
      {int thicknessId,
      String name,
      double cost,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$ThicknessCopyWithImpl<$Res, $Val extends Thickness>
    implements $ThicknessCopyWith<$Res> {
  _$ThicknessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thicknessId = null,
    Object? name = null,
    Object? cost = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      thicknessId: null == thicknessId
          ? _value.thicknessId
          : thicknessId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ThicknessImplCopyWith<$Res>
    implements $ThicknessCopyWith<$Res> {
  factory _$$ThicknessImplCopyWith(
          _$ThicknessImpl value, $Res Function(_$ThicknessImpl) then) =
      __$$ThicknessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int thicknessId,
      String name,
      double cost,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$ThicknessImplCopyWithImpl<$Res>
    extends _$ThicknessCopyWithImpl<$Res, _$ThicknessImpl>
    implements _$$ThicknessImplCopyWith<$Res> {
  __$$ThicknessImplCopyWithImpl(
      _$ThicknessImpl _value, $Res Function(_$ThicknessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thicknessId = null,
    Object? name = null,
    Object? cost = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ThicknessImpl(
      thicknessId: null == thicknessId
          ? _value.thicknessId
          : thicknessId // ignore: cast_nullable_to_non_nullable
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
class _$ThicknessImpl extends _Thickness {
  const _$ThicknessImpl(
      {required this.thicknessId,
      required this.name,
      required this.cost,
      required this.createdAt,
      required this.updatedAt})
      : super._();

  factory _$ThicknessImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThicknessImplFromJson(json);

  @override
  final int thicknessId;
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
    return 'Thickness(thicknessId: $thicknessId, name: $name, cost: $cost, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThicknessImpl &&
            (identical(other.thicknessId, thicknessId) ||
                other.thicknessId == thicknessId) &&
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
      Object.hash(runtimeType, thicknessId, name, cost, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThicknessImplCopyWith<_$ThicknessImpl> get copyWith =>
      __$$ThicknessImplCopyWithImpl<_$ThicknessImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThicknessImplToJson(
      this,
    );
  }
}

abstract class _Thickness extends Thickness {
  const factory _Thickness(
      {required final int thicknessId,
      required final String name,
      required final double cost,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ThicknessImpl;
  const _Thickness._() : super._();

  factory _Thickness.fromJson(Map<String, dynamic> json) =
      _$ThicknessImpl.fromJson;

  @override
  int get thicknessId;
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
  _$$ThicknessImplCopyWith<_$ThicknessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
