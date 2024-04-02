// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../discount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscountImpl _$$DiscountImplFromJson(Map json) => _$DiscountImpl(
      discount: (json['discount'] as num).toDouble(),
      eligible: json['eligible'] as bool,
    );

Map<String, dynamic> _$$DiscountImplToJson(_$DiscountImpl instance) =>
    <String, dynamic>{
      'discount': instance.discount,
      'eligible': instance.eligible,
    };
