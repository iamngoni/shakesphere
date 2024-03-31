//
//  shakesphere
//  get_started
//
//  Created by Ngonidzashe Mangudya on 31/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../l10n/l10n.dart';
import '../../../milkshake/views/pages/home.dart';
import '../../../shared/configs/colors.dart';
import '../../../shared/extensions/context.dart';
import '../../../shared/widgets/language_selector.dart';
import '../../../shared/widgets/sj_button.dart';
import '../../state/auth/auth_bloc.dart';
import 'signin.dart';
import 'signup.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Scaffold(
          backgroundColor: AppColors.altBackground,
          body: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is AuthSuccess) {
                context.goToAndRemoveUntil(
                  page: const HomePage(),
                );
              }
            },
            child: SafeArea(
              child: Container(
                height: context.height,
                width: context.width,
                padding: EdgeInsets.symmetric(
                  horizontal: sx(20),
                  vertical: sy(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'SHAKESPHERE',
                          style: TextStyle(
                            color: AppColors.blue,
                            fontWeight: FontWeight.w700,
                            fontSize: sy(10),
                          ),
                        ),
                        const LanguageSelector(
                          iconColor: AppColors.blue,
                          textColor: AppColors.blue,
                          backgroundColor: AppColors.altBackground,
                        ),
                      ],
                    ),
                    Divider(
                      color: AppColors.border,
                      height: sy(30),
                    ),
                    Text(
                      context.l10n.getStarted_Title,
                      style: TextStyle(
                        color: AppColors.blue,
                        fontWeight: FontWeight.w700,
                        fontSize: sy(20),
                      ),
                    ),
                    Text(
                      context.l10n.getStarted_Message,
                      style: TextStyle(
                        color: AppColors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: sy(9),
                      ),
                    ),
                    const Spacer(),
                    SjButton(
                      text: context.l10n.getStarted_BtnTitle,
                      icon: CupertinoIcons.arrow_right,
                      onTap: () {
                        context.goTo(
                          page: const SignupPage(),
                        );
                      },
                    ),
                    SizedBox(
                      height: sy(15),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          context.l10n.getStarted_AlreadyHaveAccount,
                          style: TextStyle(
                            color: AppColors.blue,
                            fontWeight: FontWeight.w400,
                            fontSize: sy(9),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            context.goTo(
                              page: const SigninPage(),
                            );
                          },
                          child: Text(
                            context.l10n.getStarted_BtnTitle2,
                            style: TextStyle(
                              color: AppColors.blue,
                              fontWeight: FontWeight.w700,
                              fontSize: sy(9),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
