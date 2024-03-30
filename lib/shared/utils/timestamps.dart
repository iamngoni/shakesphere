//
//  shakesphere
//  timestamps
//
//  Created by Ngonidzashe Mangudya on 30/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:freezed_annotation/freezed_annotation.dart';

class TimestampConverter implements JsonConverter<DateTime?, int?> {
  const TimestampConverter();

  @override
  DateTime? fromJson(int? timestamp) {
    return timestamp != null
        ? DateTime.fromMillisecondsSinceEpoch(timestamp)
        : null;
  }

  @override
  int? toJson(DateTime? date) => date?.millisecondsSinceEpoch;
}
