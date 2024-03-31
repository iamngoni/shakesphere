// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../flavor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlavorImpl _$$FlavorImplFromJson(Map json) => _$FlavorImpl(
      flavorId: json['flavorId'] as int,
      name: json['name'] as String,
      cost: (json['cost'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$FlavorImplToJson(_$FlavorImpl instance) =>
    <String, dynamic>{
      'flavorId': instance.flavorId,
      'name': instance.name,
      'cost': instance.cost,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
