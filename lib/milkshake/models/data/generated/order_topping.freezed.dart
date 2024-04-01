// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../order_topping.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderTopping _$OrderToppingFromJson(Map<String, dynamic> json) {
  return _OrderTopping.fromJson(json);
}

/// @nodoc
mixin _$OrderTopping {
  int get orderToppingId => throw _privateConstructorUsedError;
  int get orderId => throw _privateConstructorUsedError;
  int get toppingId => throw _privateConstructorUsedError;
  Topping get topping => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderToppingCopyWith<OrderTopping> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderToppingCopyWith<$Res> {
  factory $OrderToppingCopyWith(
          OrderTopping value, $Res Function(OrderTopping) then) =
      _$OrderToppingCopyWithImpl<$Res, OrderTopping>;
  @useResult
  $Res call({int orderToppingId, int orderId, int toppingId, Topping topping});

  $ToppingCopyWith<$Res> get topping;
}

/// @nodoc
class _$OrderToppingCopyWithImpl<$Res, $Val extends OrderTopping>
    implements $OrderToppingCopyWith<$Res> {
  _$OrderToppingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderToppingId = null,
    Object? orderId = null,
    Object? toppingId = null,
    Object? topping = null,
  }) {
    return _then(_value.copyWith(
      orderToppingId: null == orderToppingId
          ? _value.orderToppingId
          : orderToppingId // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      toppingId: null == toppingId
          ? _value.toppingId
          : toppingId // ignore: cast_nullable_to_non_nullable
              as int,
      topping: null == topping
          ? _value.topping
          : topping // ignore: cast_nullable_to_non_nullable
              as Topping,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ToppingCopyWith<$Res> get topping {
    return $ToppingCopyWith<$Res>(_value.topping, (value) {
      return _then(_value.copyWith(topping: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderToppingImplCopyWith<$Res>
    implements $OrderToppingCopyWith<$Res> {
  factory _$$OrderToppingImplCopyWith(
          _$OrderToppingImpl value, $Res Function(_$OrderToppingImpl) then) =
      __$$OrderToppingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int orderToppingId, int orderId, int toppingId, Topping topping});

  @override
  $ToppingCopyWith<$Res> get topping;
}

/// @nodoc
class __$$OrderToppingImplCopyWithImpl<$Res>
    extends _$OrderToppingCopyWithImpl<$Res, _$OrderToppingImpl>
    implements _$$OrderToppingImplCopyWith<$Res> {
  __$$OrderToppingImplCopyWithImpl(
      _$OrderToppingImpl _value, $Res Function(_$OrderToppingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderToppingId = null,
    Object? orderId = null,
    Object? toppingId = null,
    Object? topping = null,
  }) {
    return _then(_$OrderToppingImpl(
      orderToppingId: null == orderToppingId
          ? _value.orderToppingId
          : orderToppingId // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      toppingId: null == toppingId
          ? _value.toppingId
          : toppingId // ignore: cast_nullable_to_non_nullable
              as int,
      topping: null == topping
          ? _value.topping
          : topping // ignore: cast_nullable_to_non_nullable
              as Topping,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderToppingImpl extends _OrderTopping {
  const _$OrderToppingImpl(
      {required this.orderToppingId,
      required this.orderId,
      required this.toppingId,
      required this.topping})
      : super._();

  factory _$OrderToppingImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderToppingImplFromJson(json);

  @override
  final int orderToppingId;
  @override
  final int orderId;
  @override
  final int toppingId;
  @override
  final Topping topping;

  @override
  String toString() {
    return 'OrderTopping(orderToppingId: $orderToppingId, orderId: $orderId, toppingId: $toppingId, topping: $topping)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderToppingImpl &&
            (identical(other.orderToppingId, orderToppingId) ||
                other.orderToppingId == orderToppingId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.toppingId, toppingId) ||
                other.toppingId == toppingId) &&
            (identical(other.topping, topping) || other.topping == topping));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, orderToppingId, orderId, toppingId, topping);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderToppingImplCopyWith<_$OrderToppingImpl> get copyWith =>
      __$$OrderToppingImplCopyWithImpl<_$OrderToppingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderToppingImplToJson(
      this,
    );
  }
}

abstract class _OrderTopping extends OrderTopping {
  const factory _OrderTopping(
      {required final int orderToppingId,
      required final int orderId,
      required final int toppingId,
      required final Topping topping}) = _$OrderToppingImpl;
  const _OrderTopping._() : super._();

  factory _OrderTopping.fromJson(Map<String, dynamic> json) =
      _$OrderToppingImpl.fromJson;

  @override
  int get orderToppingId;
  @override
  int get orderId;
  @override
  int get toppingId;
  @override
  Topping get topping;
  @override
  @JsonKey(ignore: true)
  _$$OrderToppingImplCopyWith<_$OrderToppingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
