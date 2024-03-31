//
//  shakesphere
//  topping
//
//  Created by Ngonidzashe Mangudya on 31/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/topping.freezed.dart';
part 'generated/topping.g.dart';

@freezed
class Topping with _$Topping {
  const factory Topping({
    required int toppingId,
    required String name,
    required double cost,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Topping;

  const Topping._();

  factory Topping.fromJson(Map<String, dynamic> json) =>
      _$ToppingFromJson(json);
}
