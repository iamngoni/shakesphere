//
//  shakesphere
//  vibration
//
//  Created by Ngonidzashe Mangudya on 14/02/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:vibration/vibration.dart';

@singleton
class VibrationService {
  Future<void> vibrate() async {
    final bool? hasVibrator = await Vibration.hasVibrator();
    log('Device has vibrator: $hasVibrator');
    if (hasVibrator != null && hasVibrator) {
      await Vibration.vibrate();
    }
    return;
  }
}
