//
//  shakesphere
//  discount
//
//  Created by Ngonidzashe Mangudya on 02/04/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/discount.freezed.dart';
part 'generated/discount.g.dart';

@freezed
class Discount with _$Discount {
  const factory Discount({
    required double discount,
    required bool eligible,
  }) = _Discount;

  const Discount._();

  factory Discount.fromJson(Map<String, dynamic> json) =>
      _$DiscountFromJson(json);
}
