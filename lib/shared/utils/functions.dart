//
//  shakesphere
//  functions
//
//  Created by Ngonidzashe Mangudya on 01/04/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/material.dart';

bool isTimeOfDayBefore(TimeOfDay first, TimeOfDay second) {
  // Convert both TimeOfDay objects to minutes
  final int firstInMinutes = first.hour * 60 + first.minute;
  final int secondInMinutes = second.hour * 60 + second.minute;

  // Compare the minutes
  return firstInMinutes < secondInMinutes;
}
