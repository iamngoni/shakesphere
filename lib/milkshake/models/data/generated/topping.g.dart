// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../topping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToppingImpl _$$ToppingImplFromJson(Map json) => _$ToppingImpl(
      toppingId: json['toppingId'] as int,
      name: json['name'] as String,
      cost: (json['cost'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ToppingImplToJson(_$ToppingImpl instance) =>
    <String, dynamic>{
      'toppingId': instance.toppingId,
      'name': instance.name,
      'cost': instance.cost,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
