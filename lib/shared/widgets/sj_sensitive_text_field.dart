//
//  shakesphere
//  sj_sensitive_text_field
//
//  Created by Ngonidzashe Mangudya on 30/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../configs/colors.dart';

class SjSensitiveTextField extends StatefulWidget {
  const SjSensitiveTextField({
    required this.controller,
    required this.label,
    required this.hint,
    this.readOnly = false,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.labelColor = AppColors.black,
    super.key,
  });

  final TextEditingController controller;
  final String label;
  final String hint;
  final String? Function(String?)? validator;
  final bool readOnly;
  final TextInputType keyboardType;
  final Color labelColor;

  @override
  State<SjSensitiveTextField> createState() => _SjSensitiveTextFieldState();
}

class _SjSensitiveTextFieldState extends State<SjSensitiveTextField> {
  bool obscureText = true;

  void toggleObscureText() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.label,
              style: TextStyle(
                color: widget.labelColor,
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
                color: AppColors.white,
                border: Border.all(
                  color: AppColors.teal.withOpacity(0.2),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: widget.controller,
                style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: sy(9),
                ),
                decoration: InputDecoration(
                  hintText: widget.hint,
                  hintStyle: TextStyle(
                    color: AppColors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: sy(9),
                  ),
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    onPressed: toggleObscureText,
                    icon: Icon(
                      obscureText ? Icons.visibility : Icons.visibility_off,
                      color: AppColors.grey,
                    ),
                  ),
                ),
                obscureText: widget.readOnly || obscureText,
                keyboardType: widget.keyboardType,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: widget.validator,
                readOnly: widget.readOnly,
              ),
            ),
          ],
        );
      },
    );
  }
}