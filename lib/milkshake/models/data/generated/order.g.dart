// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map json) => _$OrderImpl(
      orderId: json['orderId'] as int,
      patronId: json['patronId'] as int,
      restaurantId: json['restaurantId'] as int,
      flavorId: json['flavorId'] as int,
      thicknessId: json['thicknessId'] as int,
      subtotal: (json['subtotal'] as num).toDouble(),
      tax: (json['tax'] as num).toDouble(),
      total: (json['total'] as num).toDouble(),
      discount: (json['discount'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      restaurant: Restaurant.fromJson(
          Map<String, dynamic>.from(json['restaurant'] as Map)),
      flavor: Flavor.fromJson(Map<String, dynamic>.from(json['flavor'] as Map)),
      thickness: Thickness.fromJson(
          Map<String, dynamic>.from(json['thickness'] as Map)),
      orderToppings: (json['orderToppings'] as List<dynamic>)
          .map(
              (e) => OrderTopping.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'patronId': instance.patronId,
      'restaurantId': instance.restaurantId,
      'flavorId': instance.flavorId,
      'thicknessId': instance.thicknessId,
      'subtotal': instance.subtotal,
      'tax': instance.tax,
      'total': instance.total,
      'discount': instance.discount,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'restaurant': instance.restaurant.toJson(),
      'flavor': instance.flavor.toJson(),
      'thickness': instance.thickness.toJson(),
      'orderToppings': instance.orderToppings.map((e) => e.toJson()).toList(),
    };
