//
//  shakesphere
//  payment_method
//
//  Created by Ngonidzashe Mangudya on 01/04/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:freezed_annotation/freezed_annotation.dart';

enum PaymentMethod {
  @JsonValue('card')
  card('Card'),
  @JsonValue('cash')
  cash('Cash on Delivery');

  const PaymentMethod(this.value);
  final String value;
}
