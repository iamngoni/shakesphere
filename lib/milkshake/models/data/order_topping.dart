//
//  shakesphere
//  order_topping
//
//  Created by Ngonidzashe Mangudya on 02/04/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:freezed_annotation/freezed_annotation.dart';

import 'topping.dart';

part 'generated/order_topping.freezed.dart';
part 'generated/order_topping.g.dart';

@freezed
class OrderTopping with _$OrderTopping {
  const factory OrderTopping({
    required int orderToppingId,
    required int orderId,
    required int toppingId,
    required Topping topping,
  }) = _OrderTopping;

  const OrderTopping._();

  factory OrderTopping.fromJson(Map<String, dynamic> json) =>
      _$OrderToppingFromJson(json);
}
