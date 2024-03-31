//
//  shakesphere
//  signin_form
//
//  Created by Ngonidzashe Mangudya on 31/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:localregex/localregex.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../l10n/l10n.dart';
import '../../../shared/configs/colors.dart';
import '../../../shared/widgets/sj_sensitive_text_field.dart';
import '../../../shared/widgets/sj_text_field.dart';

class SigninForm extends StatelessWidget {
  const SigninForm({
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    super.key,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Form(
          key: formKey,
          child: ListView(
            children: [
              Text(
                context.l10n.signIn_Title,
                style: TextStyle(
                  color: AppColors.blue,
                  fontWeight: FontWeight.w700,
                  fontSize: sy(15),
                ),
              ),
              SizedBox(
                height: sy(20),
              ),
              SjTextField(
                controller: emailController,
                hint: context.l10n.signup_EmailHint,
                validator: (value) {
                  if (value!.isEmpty) {
                    return context.l10n.fieldIsRequiredError;
                  }

                  if (!LocalRegex.isEmail(value)) {
                    return context.l10n.invalidEmailError;
                  }

                  return null;
                },
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: sy(10),
              ),
              SjSensitiveTextField(
                controller: passwordController,
                hint: context.l10n.signup_PasswordHint,
                validator: (value) {
                  if (value!.isEmpty) {
                    return context.l10n.fieldIsRequiredError;
                  }

                  return null;
                },
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: sy(10),
              ),
              Text(
                context.l10n.signIn_forgotYourPasswordBtnTitle,
                style: TextStyle(
                  color: AppColors.blue,
                  fontWeight: FontWeight.w400,
                  fontSize: sy(8),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
