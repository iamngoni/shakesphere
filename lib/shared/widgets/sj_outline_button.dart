//
//  shakesphere
//  sj_outline_button
//
//  Created by Ngonidzashe Mangudya on 30/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../configs/colors.dart';

class SjOutlineButton extends StatelessWidget {
  const SjOutlineButton({
    required this.text,
    this.onTap,
    this.color = AppColors.blue,
    this.backgroundColor = AppColors.white,
    this.borderRadius = 5,
    this.verticalPadding = 7,
    super.key,
  });

  final String text;
  final VoidCallback? onTap;
  final Color color;
  final Color backgroundColor;
  final double borderRadius;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
              horizontal: sx(20),
              vertical: sy(verticalPadding),
            ),
            decoration: BoxDecoration(
              color: backgroundColor,
              border: Border.all(
                color: color,
              ),
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: Text(
              text,
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.w500,
                fontSize: sy(10),
              ),
            ),
          ),
        );
      },
    );
  }
}
