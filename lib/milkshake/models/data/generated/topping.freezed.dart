// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../topping.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Topping _$ToppingFromJson(Map<String, dynamic> json) {
  return _Topping.fromJson(json);
}

/// @nodoc
mixin _$Topping {
  int get toppingId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get cost => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToppingCopyWith<Topping> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToppingCopyWith<$Res> {
  factory $ToppingCopyWith(Topping value, $Res Function(Topping) then) =
      _$ToppingCopyWithImpl<$Res, Topping>;
  @useResult
  $Res call(
      {int toppingId,
      String name,
      double cost,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$ToppingCopyWithImpl<$Res, $Val extends Topping>
    implements $ToppingCopyWith<$Res> {
  _$ToppingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toppingId = null,
    Object? name = null,
    Object? cost = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      toppingId: null == toppingId
          ? _value.toppingId
          : toppingId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ToppingImplCopyWith<$Res> implements $ToppingCopyWith<$Res> {
  factory _$$ToppingImplCopyWith(
          _$ToppingImpl value, $Res Function(_$ToppingImpl) then) =
      __$$ToppingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int toppingId,
      String name,
      double cost,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$ToppingImplCopyWithImpl<$Res>
    extends _$ToppingCopyWithImpl<$Res, _$ToppingImpl>
    implements _$$ToppingImplCopyWith<$Res> {
  __$$ToppingImplCopyWithImpl(
      _$ToppingImpl _value, $Res Function(_$ToppingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toppingId = null,
    Object? name = null,
    Object? cost = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ToppingImpl(
      toppingId: null == toppingId
          ? _value.toppingId
          : toppingId // ignore: cast_nullable_to_non_nullable
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
class _$ToppingImpl extends _Topping {
  const _$ToppingImpl(
      {required this.toppingId,
      required this.name,
      required this.cost,
      required this.createdAt,
      required this.updatedAt})
      : super._();

  factory _$ToppingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToppingImplFromJson(json);

  @override
  final int toppingId;
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
    return 'Topping(toppingId: $toppingId, name: $name, cost: $cost, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToppingImpl &&
            (identical(other.toppingId, toppingId) ||
                other.toppingId == toppingId) &&
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
      Object.hash(runtimeType, toppingId, name, cost, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToppingImplCopyWith<_$ToppingImpl> get copyWith =>
      __$$ToppingImplCopyWithImpl<_$ToppingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToppingImplToJson(
      this,
    );
  }
}

abstract class _Topping extends Topping {
  const factory _Topping(
      {required final int toppingId,
      required final String name,
      required final double cost,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ToppingImpl;
  const _Topping._() : super._();

  factory _Topping.fromJson(Map<String, dynamic> json) = _$ToppingImpl.fromJson;

  @override
  int get toppingId;
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
  _$$ToppingImplCopyWith<_$ToppingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
