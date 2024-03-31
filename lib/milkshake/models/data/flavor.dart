//
//  shakesphere
//  flavor
//
//  Created by Ngonidzashe Mangudya on 31/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/flavor.freezed.dart';
part 'generated/flavor.g.dart';

@freezed
class Flavor with _$Flavor {
  const factory Flavor({
    required int flavorId,
    required String name,
    required double cost,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Flavor;

  const Flavor._();

  factory Flavor.fromJson(Map<String, dynamic> json) => _$FlavorFromJson(json);
}
