//
//  shakesphere
//  thickness
//
//  Created by Ngonidzashe Mangudya on 31/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/thickness.freezed.dart';
part 'generated/thickness.g.dart';

@freezed
class Thickness with _$Thickness {
  const factory Thickness({
    required int thicknessId,
    required String name,
    required double cost,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Thickness;

  const Thickness._();

  factory Thickness.fromJson(Map<String, dynamic> json) =>
      _$ThicknessFromJson(json);
}
