//
//  shakesphere
//  milkshake
//
//  Created by Ngonidzashe Mangudya on 30/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../l10n/l10n.dart';
import '../../../shared/configs/colors.dart';
import '../../../shared/models/language.dart';
import '../../../shared/state/locale/locale_bloc.dart';
import '../../../shared/utils/keyboard.dart';

class MilkshakeApp extends StatelessWidget {
  const MilkshakeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleBloc, Language>(
      builder: (context, state) {
        return MaterialApp(
          title: 'Shakesphere',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blueGrey,
            scaffoldBackgroundColor: AppColors.white,
            fontFamily: 'Nunito',
          ),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: Locale(state.code),
          builder: (context, child) {
            return GestureDetector(
              onTap: () {
                dismissKeyboard(context);
              },
              child: child,
            );
          },
          home: const Placeholder(),
        );
      },
    );
  }
}
