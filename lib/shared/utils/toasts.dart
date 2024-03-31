//
//  shakesphere
//  toasts
//
//  Created by Ngonidzashe Mangudya on 30/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';

import '../configs/colors.dart';
import '../widgets/toasts_overlay.dart';

class Toasts {
  static void showSuccess(String message, BuildContext context) {
    _show(message, AppColors.blue, context);
  }

  static void showError(String message, BuildContext context) {
    _show(message, AppColors.red, context);
  }

  static void _show(
    String message,
    Color backgroundColor,
    BuildContext context,
  ) {
    final OverlayState overlayState = Overlay.of(context);

    final overlayEntry = OverlayEntry(
      builder: (context) => ToastsOverlay(
        message: message,
        backgroundColor: backgroundColor,
      ),
    );

    overlayState.insert(overlayEntry);

    Future.delayed(4.seconds, overlayEntry.remove);
  }
}
