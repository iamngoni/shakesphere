//
//  shakesphere
//  order
//
//  Created by Ngonidzashe Mangudya on 02/04/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:freezed_annotation/freezed_annotation.dart';

import 'flavor.dart';
import 'order_topping.dart';
import 'payment_method.dart';
import 'restaurant.dart';
import 'thickness.dart';

part 'generated/order.freezed.dart';
part 'generated/order.g.dart';

@freezed
class Order with _$Order {
  const factory Order({
    required int orderId,
    required int patronId,
    required int restaurantId,
    required int flavorId,
    required int thicknessId,
    required double subtotal,
    required double tax,
    required double total,
    required double discount,
    required DateTime pickupTime,
    required PaymentMethod paymentMethod,
    required int numberOfDrinks,
    required DateTime createdAt,
    required DateTime updatedAt,
    required Restaurant restaurant,
    required Flavor flavor,
    required Thickness thickness,
    required List<OrderTopping> orderToppings,
  }) = _Order;

  const Order._();

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
