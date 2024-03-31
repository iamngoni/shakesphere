// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../thickness.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThicknessImpl _$$ThicknessImplFromJson(Map json) => _$ThicknessImpl(
      thicknessId: json['thicknessId'] as int,
      name: json['name'] as String,
      cost: (json['cost'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ThicknessImplToJson(_$ThicknessImpl instance) =>
    <String, dynamic>{
      'thicknessId': instance.thicknessId,
      'name': instance.name,
      'cost': instance.cost,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
