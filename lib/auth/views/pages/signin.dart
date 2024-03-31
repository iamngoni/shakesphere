//
//  shakesphere
//  signin
//
//  Created by Ngonidzashe Mangudya on 31/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../l10n/l10n.dart';
import '../../../milkshake/views/pages/home.dart';
import '../../../shared/configs/colors.dart';
import '../../../shared/extensions/context.dart';
import '../../../shared/utils/modal.dart';
import '../../../shared/widgets/loader.dart';
import '../../../shared/widgets/sj_button.dart';
import '../../models/dtos/signin_dto.dart';
import '../../state/auth/auth_bloc.dart';
import '../widgets/signin_form.dart';
import '../widgets/terms_of_use_modal.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              height: context.height,
              width: context.width,
              padding: EdgeInsets.symmetric(
                horizontal: sx(20),
                vertical: sy(10),
              ),
              child: BlocConsumer<AuthBloc, AuthState>(
                listener: (context, state) {
                  if (state is AuthError) {
                    if (state.error.message != 'Not Authenticated') {
                      context.notify(
                        state.error.message,
                        isError: true,
                      );
                    }
                  }

                  if (state is AuthSuccess) {
                    context
                      ..notify('Sign in successful.')
                      ..goToAndReplace(page: const HomePage());
                  }
                },
                builder: (context, state) {
                  if (state is AuthLoading) {
                    return const Center(
                      child: LoaderWidget(),
                    );
                  }

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              context.goBack();
                            },
                            child: Icon(
                              CupertinoIcons.arrow_left,
                              color: AppColors.blue,
                              size: sy(12),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: sx(7),
                              vertical: sy(2),
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.blue,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              context.l10n.signIn_SignInBtnTitle,
                              style: TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: sy(7),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: sy(20),
                      ),
                      Expanded(
                        child: SigninForm(
                          formKey: formKey,
                          emailController: emailController,
                          passwordController: passwordController,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: context.l10n.signup_TermsAndConditions1,
                              style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w400,
                                fontSize: sy(8),
                              ),
                            ),
                            const TextSpan(text: ' '),
                            TextSpan(
                              text: context.l10n.signup_TermsAndConditions2,
                              style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w700,
                                fontSize: sy(8),
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  $showModal(
                                    context,
                                    child: const TermsOfUseModal(),
                                  );
                                },
                            ),
                            const TextSpan(text: ' '),
                            TextSpan(
                              text: context.l10n.signup_TermsAndConditions3,
                              style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w400,
                                fontSize: sy(8),
                              ),
                            ),
                            const TextSpan(text: ' '),
                            TextSpan(
                              text: context.l10n.signup_TermsAndConditions4,
                              style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w700,
                                fontSize: sy(8),
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  $showModal(
                                    context,
                                    child: const TermsOfUseModal(),
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: sy(10),
                      ),
                      SjButton(
                        text: context.l10n.signIn_SignInBtnTitle,
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            final SigninDTO dto = SigninDTO(
                              emailAddress: emailController.text,
                              password: passwordController.text,
                            );
                            context.read<AuthBloc>().add(SignInEvent(dto));
                          }
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
