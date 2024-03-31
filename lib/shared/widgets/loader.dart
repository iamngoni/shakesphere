//
//  shakesphere
//  loader
//
//  Created by Ngonidzashe Mangudya on 30/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../configs/colors.dart';

class LoaderWidget extends StatelessWidget {
  const LoaderWidget({
    this.color = AppColors.blue,
    this.size = 15,
    super.key,
  });

  final Color? color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Platform.isAndroid
            ? SizedBox(
                height: sy(size),
                width: sy(size),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(color),
                ),
              )
            : CupertinoActivityIndicator(
                radius: sy(size / 2),
                color: color,
              );
      },
    );
  }
}
