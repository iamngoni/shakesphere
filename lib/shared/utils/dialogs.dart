//
//  shakesphere
//  dialogs
//
//  Created by Ngonidzashe Mangudya on 30/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../l10n/l10n.dart';
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
    barrierColor: AppColors.white.withOpacity(0.5),
    builder: (context) => RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Dialog(
          insetPadding: EdgeInsets.symmetric(horizontal: sx(10)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            height: sy(100),
            width: context.width,
            padding: EdgeInsets.symmetric(
              horizontal: sx(10),
              vertical: sy(5),
            ),
            decoration: BoxDecoration(
              color: AppColors.blue,
              boxShadow: [
                BoxShadow(
                  color: AppColors.blue.withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(5, 5),
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: sy(12),
                      width: sy(12),
                    ),
                    Text(
                      title ?? 'Confirm Action',
                      style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: sy(10),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => context.goBack(value: false),
                      child: SizedBox(
                        height: sy(12),
                        width: sy(12),
                        child: Stack(
                          children: [
                            CircularProgressIndicator(
                              value: 0,
                              backgroundColor: AppColors.white,
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                AppColors.white,
                              ),
                              strokeCap: StrokeCap.round,
                              strokeWidth: sx(1),
                            ),
                            Center(
                              child: Icon(
                                Icons.close,
                                color: AppColors.white,
                                size: sy(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(),
                Expanded(
                  child: Center(
                    child: Text(
                      message,
                      style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: sy(9),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: sy(10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.goBack(value: true);
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: sx(15),
                          vertical: sy(2),
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          context.l10n.dialog_Yes,
                          style: TextStyle(
                            color: AppColors.blue,
                            fontWeight: FontWeight.w700,
                            fontSize: sy(9),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: sx(20),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.goBack(value: false);
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: sx(15),
                          vertical: sy(2),
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.yellow,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          context.l10n.dialog_No,
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: sy(9),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
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
