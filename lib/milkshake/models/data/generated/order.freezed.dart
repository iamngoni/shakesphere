// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  int get orderId => throw _privateConstructorUsedError;
  int get patronId => throw _privateConstructorUsedError;
  int get restaurantId => throw _privateConstructorUsedError;
  int get flavorId => throw _privateConstructorUsedError;
  int get thicknessId => throw _privateConstructorUsedError;
  double get subtotal => throw _privateConstructorUsedError;
  double get tax => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  DateTime get pickupTime => throw _privateConstructorUsedError;
  PaymentMethod get paymentMethod => throw _privateConstructorUsedError;
  int get numberOfDrinks => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  Restaurant get restaurant => throw _privateConstructorUsedError;
  Flavor get flavor => throw _privateConstructorUsedError;
  Thickness get thickness => throw _privateConstructorUsedError;
  List<OrderTopping> get orderToppings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {int orderId,
      int patronId,
      int restaurantId,
      int flavorId,
      int thicknessId,
      double subtotal,
      double tax,
      double total,
      double discount,
      DateTime pickupTime,
      PaymentMethod paymentMethod,
      int numberOfDrinks,
      DateTime createdAt,
      DateTime updatedAt,
      Restaurant restaurant,
      Flavor flavor,
      Thickness thickness,
      List<OrderTopping> orderToppings});

  $RestaurantCopyWith<$Res> get restaurant;
  $FlavorCopyWith<$Res> get flavor;
  $ThicknessCopyWith<$Res> get thickness;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? patronId = null,
    Object? restaurantId = null,
    Object? flavorId = null,
    Object? thicknessId = null,
    Object? subtotal = null,
    Object? tax = null,
    Object? total = null,
    Object? discount = null,
    Object? pickupTime = null,
    Object? paymentMethod = null,
    Object? numberOfDrinks = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? restaurant = null,
    Object? flavor = null,
    Object? thickness = null,
    Object? orderToppings = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      patronId: null == patronId
          ? _value.patronId
          : patronId // ignore: cast_nullable_to_non_nullable
              as int,
      restaurantId: null == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as int,
      flavorId: null == flavorId
          ? _value.flavorId
          : flavorId // ignore: cast_nullable_to_non_nullable
              as int,
      thicknessId: null == thicknessId
          ? _value.thicknessId
          : thicknessId // ignore: cast_nullable_to_non_nullable
              as int,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      pickupTime: null == pickupTime
          ? _value.pickupTime
          : pickupTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      numberOfDrinks: null == numberOfDrinks
          ? _value.numberOfDrinks
          : numberOfDrinks // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
      flavor: null == flavor
          ? _value.flavor
          : flavor // ignore: cast_nullable_to_non_nullable
              as Flavor,
      thickness: null == thickness
          ? _value.thickness
          : thickness // ignore: cast_nullable_to_non_nullable
              as Thickness,
      orderToppings: null == orderToppings
          ? _value.orderToppings
          : orderToppings // ignore: cast_nullable_to_non_nullable
              as List<OrderTopping>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RestaurantCopyWith<$Res> get restaurant {
    return $RestaurantCopyWith<$Res>(_value.restaurant, (value) {
      return _then(_value.copyWith(restaurant: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FlavorCopyWith<$Res> get flavor {
    return $FlavorCopyWith<$Res>(_value.flavor, (value) {
      return _then(_value.copyWith(flavor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ThicknessCopyWith<$Res> get thickness {
    return $ThicknessCopyWith<$Res>(_value.thickness, (value) {
      return _then(_value.copyWith(thickness: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int orderId,
      int patronId,
      int restaurantId,
      int flavorId,
      int thicknessId,
      double subtotal,
      double tax,
      double total,
      double discount,
      DateTime pickupTime,
      PaymentMethod paymentMethod,
      int numberOfDrinks,
      DateTime createdAt,
      DateTime updatedAt,
      Restaurant restaurant,
      Flavor flavor,
      Thickness thickness,
      List<OrderTopping> orderToppings});

  @override
  $RestaurantCopyWith<$Res> get restaurant;
  @override
  $FlavorCopyWith<$Res> get flavor;
  @override
  $ThicknessCopyWith<$Res> get thickness;
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? patronId = null,
    Object? restaurantId = null,
    Object? flavorId = null,
    Object? thicknessId = null,
    Object? subtotal = null,
    Object? tax = null,
    Object? total = null,
    Object? discount = null,
    Object? pickupTime = null,
    Object? paymentMethod = null,
    Object? numberOfDrinks = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? restaurant = null,
    Object? flavor = null,
    Object? thickness = null,
    Object? orderToppings = null,
  }) {
    return _then(_$OrderImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      patronId: null == patronId
          ? _value.patronId
          : patronId // ignore: cast_nullable_to_non_nullable
              as int,
      restaurantId: null == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as int,
      flavorId: null == flavorId
          ? _value.flavorId
          : flavorId // ignore: cast_nullable_to_non_nullable
              as int,
      thicknessId: null == thicknessId
          ? _value.thicknessId
          : thicknessId // ignore: cast_nullable_to_non_nullable
              as int,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      pickupTime: null == pickupTime
          ? _value.pickupTime
          : pickupTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      numberOfDrinks: null == numberOfDrinks
          ? _value.numberOfDrinks
          : numberOfDrinks // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
      flavor: null == flavor
          ? _value.flavor
          : flavor // ignore: cast_nullable_to_non_nullable
              as Flavor,
      thickness: null == thickness
          ? _value.thickness
          : thickness // ignore: cast_nullable_to_non_nullable
              as Thickness,
      orderToppings: null == orderToppings
          ? _value._orderToppings
          : orderToppings // ignore: cast_nullable_to_non_nullable
              as List<OrderTopping>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl extends _Order {
  const _$OrderImpl(
      {required this.orderId,
      required this.patronId,
      required this.restaurantId,
      required this.flavorId,
      required this.thicknessId,
      required this.subtotal,
      required this.tax,
      required this.total,
      required this.discount,
      required this.pickupTime,
      required this.paymentMethod,
      required this.numberOfDrinks,
      required this.createdAt,
      required this.updatedAt,
      required this.restaurant,
      required this.flavor,
      required this.thickness,
      required final List<OrderTopping> orderToppings})
      : _orderToppings = orderToppings,
        super._();

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  final int orderId;
  @override
  final int patronId;
  @override
  final int restaurantId;
  @override
  final int flavorId;
  @override
  final int thicknessId;
  @override
  final double subtotal;
  @override
  final double tax;
  @override
  final double total;
  @override
  final double discount;
  @override
  final DateTime pickupTime;
  @override
  final PaymentMethod paymentMethod;
  @override
  final int numberOfDrinks;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final Restaurant restaurant;
  @override
  final Flavor flavor;
  @override
  final Thickness thickness;
  final List<OrderTopping> _orderToppings;
  @override
  List<OrderTopping> get orderToppings {
    if (_orderToppings is EqualUnmodifiableListView) return _orderToppings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderToppings);
  }

  @override
  String toString() {
    return 'Order(orderId: $orderId, patronId: $patronId, restaurantId: $restaurantId, flavorId: $flavorId, thicknessId: $thicknessId, subtotal: $subtotal, tax: $tax, total: $total, discount: $discount, pickupTime: $pickupTime, paymentMethod: $paymentMethod, numberOfDrinks: $numberOfDrinks, createdAt: $createdAt, updatedAt: $updatedAt, restaurant: $restaurant, flavor: $flavor, thickness: $thickness, orderToppings: $orderToppings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.patronId, patronId) ||
                other.patronId == patronId) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.flavorId, flavorId) ||
                other.flavorId == flavorId) &&
            (identical(other.thicknessId, thicknessId) ||
                other.thicknessId == thicknessId) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.pickupTime, pickupTime) ||
                other.pickupTime == pickupTime) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.numberOfDrinks, numberOfDrinks) ||
                other.numberOfDrinks == numberOfDrinks) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.restaurant, restaurant) ||
                other.restaurant == restaurant) &&
            (identical(other.flavor, flavor) || other.flavor == flavor) &&
            (identical(other.thickness, thickness) ||
                other.thickness == thickness) &&
            const DeepCollectionEquality()
                .equals(other._orderToppings, _orderToppings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      patronId,
      restaurantId,
      flavorId,
      thicknessId,
      subtotal,
      tax,
      total,
      discount,
      pickupTime,
      paymentMethod,
      numberOfDrinks,
      createdAt,
      updatedAt,
      restaurant,
      flavor,
      thickness,
      const DeepCollectionEquality().hash(_orderToppings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(
      this,
    );
  }
}

abstract class _Order extends Order {
  const factory _Order(
      {required final int orderId,
      required final int patronId,
      required final int restaurantId,
      required final int flavorId,
      required final int thicknessId,
      required final double subtotal,
      required final double tax,
      required final double total,
      required final double discount,
      required final DateTime pickupTime,
      required final PaymentMethod paymentMethod,
      required final int numberOfDrinks,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final Restaurant restaurant,
      required final Flavor flavor,
      required final Thickness thickness,
      required final List<OrderTopping> orderToppings}) = _$OrderImpl;
  const _Order._() : super._();

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  int get orderId;
  @override
  int get patronId;
  @override
  int get restaurantId;
  @override
  int get flavorId;
  @override
  int get thicknessId;
  @override
  double get subtotal;
  @override
  double get tax;
  @override
  double get total;
  @override
  double get discount;
  @override
  DateTime get pickupTime;
  @override
  PaymentMethod get paymentMethod;
  @override
  int get numberOfDrinks;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  Restaurant get restaurant;
  @override
  Flavor get flavor;
  @override
  Thickness get thickness;
  @override
  List<OrderTopping> get orderToppings;
  @override
  @JsonKey(ignore: true)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
