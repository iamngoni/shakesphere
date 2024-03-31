//
//  shakesphere
//  dialogs
//
//  Created by Ngonidzashe Mangudya on 30/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../configs/colors.dart';
import '../extensions/context.dart';
import '../widgets/sj_sensitive_text_field.dart';

Future<bool?> showConfirmActionDialog(
  String message, {
  required BuildContext context,
  String? title,
}) {
  return showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      title: title != null ? Text(title) : null,
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () => context.goBack(value: false),
          child: const Text('No'),
        ),
        TextButton(
          onPressed: () => context.goBack(value: true),
          child: const Text('Yes'),
        ),
      ],
    ),
  );
}

Future<(String, bool)?> showConfirmActionWithPinDialog(
  String message, {
  required BuildContext context,
  String? title,
}) {
  final TextEditingController pinController = TextEditingController();
  return showDialog<(String, bool)>(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: AppColors.white,
      title: title != null
          ? RelativeBuilder(
              builder: (context, height, width, sy, sx) {
                return Text(
                  title,
                  style: TextStyle(
                    color: AppColors.blue,
                    fontWeight: FontWeight.w700,
                    fontSize: sy(12),
                  ),
                );
              },
            )
          : null,
      content: RelativeBuilder(
        builder: (context, height, width, sy, sx) {
          return SizedBox(
            height: sy(90),
            child: Column(
              children: [
                Text(
                  message,
                  style: TextStyle(
                    color: AppColors.blue,
                    fontWeight: FontWeight.w400,
                    fontSize: sy(9),
                  ),
                ),
                SizedBox(
                  height: sy(5),
                ),
                SjSensitiveTextField(
                  controller: pinController,
                  hint: 'Enter PIN',
                  keyboardType: TextInputType.number,
                ),
              ],
            ),
          );
        },
      ),
      actions: [
        TextButton(
          onPressed: () => context.goBack(value: ('', false)),
          child: const Text(
            'Cancel',
            style: TextStyle(
              color: AppColors.blue,
            ),
          ),
        ),
        TextButton(
          onPressed: () => context.goBack(value: (pinController.text, true)),
          child: const Text(
            'Continue',
            style: TextStyle(
              color: AppColors.blue,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ],
    ),
  );
}
