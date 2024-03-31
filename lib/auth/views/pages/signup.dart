//
//  shakesphere
//  signup
//
//  Created by Ngonidzashe Mangudya on 31/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../l10n/l10n.dart';
import '../../../shared/configs/colors.dart';
import '../../../shared/extensions/context.dart';
import '../../../shared/utils/modal.dart';
import '../../../shared/widgets/sj_button.dart';
import '../../../shared/widgets/sj_sensitive_text_field.dart';
import '../../../shared/widgets/sj_text_field.dart';
import '../widgets/terms_of_use_modal.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
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
              child: Column(
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
                          context.l10n.signup_RegisterBtnTitle,
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
                    child: Form(
                      key: formKey,
                      child: ListView(
                        children: [
                          Text(
                            context.l10n.signup_Title,
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
                            controller: firstNameController,
                            hint: 'First name',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'First name is required';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.name,
                          ),
                          SizedBox(
                            height: sy(10),
                          ),
                          SjTextField(
                            controller: lastNameController,
                            hint: 'Last name',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Last name is required';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.name,
                          ),
                          SizedBox(
                            height: sy(10),
                          ),
                          SjTextField(
                            controller: emailController,
                            hint: 'Email',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Email is required';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(
                            height: sy(10),
                          ),
                          SjTextField(
                            controller: phoneController,
                            hint: 'Phone number',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Phone number is required';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.phone,
                          ),
                          SizedBox(
                            height: sy(10),
                          ),
                          SjSensitiveTextField(
                            controller: passwordController,
                            hint: 'Password',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Password is required';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ],
                      ),
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
                    text: context.l10n.signup_RegisterBtnTitle,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
