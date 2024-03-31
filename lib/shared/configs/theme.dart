//
//  shakesphere
//  theme
//
//  Created by Ngonidzashe Mangudya on 31/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/material.dart';

import 'colors.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
        primarySwatch: AppColors.materialBlue,
        scaffoldBackgroundColor: AppColors.background,
        fontFamily: 'Nunito',
      );
}
