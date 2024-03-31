//
//  shakesphere
//  language_selector
//
//  Created by Ngonidzashe Mangudya on 31/03/2024.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relative_scale/relative_scale.dart';

import '../configs/colors.dart';
import '../models/language.dart';
import '../state/locale/locale_bloc.dart';

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({
    this.iconColor = AppColors.white,
    this.textColor = AppColors.white,
    this.backgroundColor = AppColors.blue,
    super.key,
  });

  final Color iconColor;
  final Color textColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return BlocBuilder<LocaleBloc, Language>(
          builder: (context, state) {
            return Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                PopupMenuButton(
                  itemBuilder: (context) {
                    return Language.values.map((l) {
                      return PopupMenuItem(
                        value: l,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                l.name,
                                style: TextStyle(
                                  fontSize: sy(10),
                                ),
                              ),
                            ),
                            if (l == state)
                              Icon(
                                Icons.check,
                                color: AppColors.blue,
                                size: sy(10),
                              ),
                          ],
                        ),
                        onTap: () {
                          context.read<LocaleBloc>().add(SwitchLocale(l));
                        },
                      );
                    }).toList();
                  },
                  child: Icon(
                    Icons.language,
                    size: sy(17),
                    color: iconColor,
                  ),
                ),
                Positioned(
                  top: 0,
                  right: -sx(10),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: sx(5),
                    ),
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      state.code.toUpperCase(),
                      style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w700,
                        fontSize: sy(7),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
