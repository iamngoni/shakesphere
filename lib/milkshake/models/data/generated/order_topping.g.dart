// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../order_topping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderToppingImpl _$$OrderToppingImplFromJson(Map json) => _$OrderToppingImpl(
      orderToppingId: json['orderToppingId'] as int,
      orderId: json['orderId'] as int,
      toppingId: json['toppingId'] as int,
      topping:
          Topping.fromJson(Map<String, dynamic>.from(json['topping'] as Map)),
    );

Map<String, dynamic> _$$OrderToppingImplToJson(_$OrderToppingImpl instance) =>
    <String, dynamic>{
      'orderToppingId': instance.orderToppingId,
      'orderId': instance.orderId,
      'toppingId': instance.toppingId,
      'topping': instance.topping.toJson(),
    };
