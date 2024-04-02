// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderDTO _$OrderDTOFromJson(Map<String, dynamic> json) {
  return _OrderDTO.fromJson(json);
}

/// @nodoc
mixin _$OrderDTO {
  int get restaurantId => throw _privateConstructorUsedError;
  int get flavorId => throw _privateConstructorUsedError;
  int get thicknessId => throw _privateConstructorUsedError;
  List<int> get toppings => throw _privateConstructorUsedError;
  DateTime get pickupTime => throw _privateConstructorUsedError;
  PaymentMethod get paymentMethod => throw _privateConstructorUsedError;
  int get numberOfDrinks => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDTOCopyWith<OrderDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDTOCopyWith<$Res> {
  factory $OrderDTOCopyWith(OrderDTO value, $Res Function(OrderDTO) then) =
      _$OrderDTOCopyWithImpl<$Res, OrderDTO>;
  @useResult
  $Res call(
      {int restaurantId,
      int flavorId,
      int thicknessId,
      List<int> toppings,
      DateTime pickupTime,
      PaymentMethod paymentMethod,
      int numberOfDrinks,
      double discount});
}

/// @nodoc
class _$OrderDTOCopyWithImpl<$Res, $Val extends OrderDTO>
    implements $OrderDTOCopyWith<$Res> {
  _$OrderDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantId = null,
    Object? flavorId = null,
    Object? thicknessId = null,
    Object? toppings = null,
    Object? pickupTime = null,
    Object? paymentMethod = null,
    Object? numberOfDrinks = null,
    Object? discount = null,
  }) {
    return _then(_value.copyWith(
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
      toppings: null == toppings
          ? _value.toppings
          : toppings // ignore: cast_nullable_to_non_nullable
              as List<int>,
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
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDTOImplCopyWith<$Res>
    implements $OrderDTOCopyWith<$Res> {
  factory _$$OrderDTOImplCopyWith(
          _$OrderDTOImpl value, $Res Function(_$OrderDTOImpl) then) =
      __$$OrderDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int restaurantId,
      int flavorId,
      int thicknessId,
      List<int> toppings,
      DateTime pickupTime,
      PaymentMethod paymentMethod,
      int numberOfDrinks,
      double discount});
}

/// @nodoc
class __$$OrderDTOImplCopyWithImpl<$Res>
    extends _$OrderDTOCopyWithImpl<$Res, _$OrderDTOImpl>
    implements _$$OrderDTOImplCopyWith<$Res> {
  __$$OrderDTOImplCopyWithImpl(
      _$OrderDTOImpl _value, $Res Function(_$OrderDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantId = null,
    Object? flavorId = null,
    Object? thicknessId = null,
    Object? toppings = null,
    Object? pickupTime = null,
    Object? paymentMethod = null,
    Object? numberOfDrinks = null,
    Object? discount = null,
  }) {
    return _then(_$OrderDTOImpl(
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
      toppings: null == toppings
          ? _value._toppings
          : toppings // ignore: cast_nullable_to_non_nullable
              as List<int>,
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
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDTOImpl extends _OrderDTO {
  const _$OrderDTOImpl(
      {required this.restaurantId,
      required this.flavorId,
      required this.thicknessId,
      required final List<int> toppings,
      required this.pickupTime,
      required this.paymentMethod,
      required this.numberOfDrinks,
      required this.discount})
      : _toppings = toppings,
        super._();

  factory _$OrderDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDTOImplFromJson(json);

  @override
  final int restaurantId;
  @override
  final int flavorId;
  @override
  final int thicknessId;
  final List<int> _toppings;
  @override
  List<int> get toppings {
    if (_toppings is EqualUnmodifiableListView) return _toppings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toppings);
  }

  @override
  final DateTime pickupTime;
  @override
  final PaymentMethod paymentMethod;
  @override
  final int numberOfDrinks;
  @override
  final double discount;

  @override
  String toString() {
    return 'OrderDTO(restaurantId: $restaurantId, flavorId: $flavorId, thicknessId: $thicknessId, toppings: $toppings, pickupTime: $pickupTime, paymentMethod: $paymentMethod, numberOfDrinks: $numberOfDrinks, discount: $discount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDTOImpl &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.flavorId, flavorId) ||
                other.flavorId == flavorId) &&
            (identical(other.thicknessId, thicknessId) ||
                other.thicknessId == thicknessId) &&
            const DeepCollectionEquality().equals(other._toppings, _toppings) &&
            (identical(other.pickupTime, pickupTime) ||
                other.pickupTime == pickupTime) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.numberOfDrinks, numberOfDrinks) ||
                other.numberOfDrinks == numberOfDrinks) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      restaurantId,
      flavorId,
      thicknessId,
      const DeepCollectionEquality().hash(_toppings),
      pickupTime,
      paymentMethod,
      numberOfDrinks,
      discount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDTOImplCopyWith<_$OrderDTOImpl> get copyWith =>
      __$$OrderDTOImplCopyWithImpl<_$OrderDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDTOImplToJson(
      this,
    );
  }
}

abstract class _OrderDTO extends OrderDTO {
  const factory _OrderDTO(
      {required final int restaurantId,
      required final int flavorId,
      required final int thicknessId,
      required final List<int> toppings,
      required final DateTime pickupTime,
      required final PaymentMethod paymentMethod,
      required final int numberOfDrinks,
      required final double discount}) = _$OrderDTOImpl;
  const _OrderDTO._() : super._();

  factory _OrderDTO.fromJson(Map<String, dynamic> json) =
      _$OrderDTOImpl.fromJson;

  @override
  int get restaurantId;
  @override
  int get flavorId;
  @override
  int get thicknessId;
  @override
  List<int> get toppings;
  @override
  DateTime get pickupTime;
  @override
  PaymentMethod get paymentMethod;
  @override
  int get numberOfDrinks;
  @override
  double get discount;
  @override
  @JsonKey(ignore: true)
  _$$OrderDTOImplCopyWith<_$OrderDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
