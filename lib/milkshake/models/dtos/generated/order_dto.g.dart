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
    );

Map<String, dynamic> _$$OrderDTOImplToJson(_$OrderDTOImpl instance) =>
    <String, dynamic>{
      'restaurantId': instance.restaurantId,
      'flavorId': instance.flavorId,
      'thicknessId': instance.thicknessId,
      'toppings': instance.toppings,
    };
