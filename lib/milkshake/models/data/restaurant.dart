//
//  shakesphere
//  restaurant
//
//  Created by Ngonidzashe Mangudya on 31/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/restaurant.freezed.dart';
part 'generated/restaurant.g.dart';

@freezed
class Restaurant with _$Restaurant {
  const factory Restaurant({
    required int restaurantId,
    required String name,
    required String address,
    required double latitude,
    required double longitude,
    required DateTime startTime,
    required DateTime endTime,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Restaurant;

  const Restaurant._();

  factory Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);

  TimeOfDay get startTimeOfDay => TimeOfDay.fromDateTime(startTime);
  TimeOfDay get endTimeOfDay => TimeOfDay.fromDateTime(endTime);
}
