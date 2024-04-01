//
//  shakesphere
//  order_dto
//
//  Created by Ngonidzashe Mangudya on 02/04/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/order_dto.freezed.dart';
part 'generated/order_dto.g.dart';

@freezed
class OrderDTO with _$OrderDTO {
  const factory OrderDTO({
    required int restaurantId,
    required int flavorId,
    required int thicknessId,
    required List<int> toppings,
  }) = _OrderDTO;

  const OrderDTO._();

  factory OrderDTO.fromJson(Map<String, dynamic> json) =>
      _$OrderDTOFromJson(json);
}
