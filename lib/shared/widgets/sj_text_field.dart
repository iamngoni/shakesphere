//
//  shakesphere
//  sj_text_field
//
//  Created by Ngonidzashe Mangudya on 30/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../configs/colors.dart';

class SjTextField extends StatelessWidget {
  const SjTextField({
    required this.controller,
    required this.label,
    required this.hint,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.readOnly = false,
    this.maxLines = 1,
    this.backgroundColor = AppColors.white,
    this.borderColor,
    this.borderRadius = 10,
    this.labelColor = AppColors.black,
    super.key,
  });

  final TextEditingController controller;
  final String label;
  final String hint;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final bool readOnly;
  final int maxLines;
  final Color backgroundColor;
  final Color? borderColor;
  final double borderRadius;
  final Color labelColor;

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                color: labelColor,
                fontWeight: FontWeight.w600,
                fontSize: sy(10),
              ),
            ),
            SizedBox(
              height: sy(5),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: sx(20),
              ),
              decoration: BoxDecoration(
                color: backgroundColor,
                border: Border.all(
                  color: AppColors.teal.withOpacity(0.2),
                ),
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              child: TextFormField(
                style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: sy(9),
                ),
                controller: controller,
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: TextStyle(
                    color: AppColors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: sy(9),
                  ),
                  border: InputBorder.none,
                ),
                keyboardType: keyboardType,
                readOnly: readOnly,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: validator,
                maxLines: maxLines,
              ),
            ),
          ],
        );
      },
    );
  }
}
