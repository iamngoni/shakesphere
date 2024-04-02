// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDTOImpl _$$OrderDTOImplFromJson(Map json) => _$OrderDTOImpl(
      restaurantId: json['restaurantId'] as int,
      flavorId: json['flavorId'] as int,
      thicknessId: json['thicknessId'] as int,
      toppings:
          (json['toppings'] as List<dynamic>).map((e) => e as int).toList(),
      pickupTime: DateTime.parse(json['pickupTime'] as String),
      paymentMethod: $enumDecode(_$PaymentMethodEnumMap, json['paymentMethod']),
      numberOfDrinks: json['numberOfDrinks'] as int,
      discount: (json['discount'] as num).toDouble(),
    );

Map<String, dynamic> _$$OrderDTOImplToJson(_$OrderDTOImpl instance) =>
    <String, dynamic>{
      'restaurantId': instance.restaurantId,
      'flavorId': instance.flavorId,
      'thicknessId': instance.thicknessId,
      'toppings': instance.toppings,
      'pickupTime': instance.pickupTime.toIso8601String(),
      'paymentMethod': _$PaymentMethodEnumMap[instance.paymentMethod]!,
      'numberOfDrinks': instance.numberOfDrinks,
      'discount': instance.discount,
    };

const _$PaymentMethodEnumMap = {
  PaymentMethod.card: 'card',
  PaymentMethod.cash: 'cash',
};
