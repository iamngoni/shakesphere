//
//  shakesphere
//  terms_of_use_modal
//
//  Created by Ngonidzashe Mangudya on 31/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../l10n/l10n.dart';
import '../../../shared/configs/colors.dart';

class TermsOfUseModal extends StatelessWidget {
  const TermsOfUseModal({super.key});

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Scaffold(
          body: Container(
            height: context.height,
            width: context.width,
            padding: EdgeInsets.symmetric(
              horizontal: sx(20),
              vertical: sy(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.termsOfUse_Title,
                  style: TextStyle(
                    color: AppColors.blue,
                    fontWeight: FontWeight.w700,
                    fontSize: sy(10),
                  ),
                ),
                Divider(
                  color: AppColors.border,
                  height: sy(20),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Text(
                        context.l10n.termsOfUse_Message,
                        style: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w400,
                          fontSize: sy(9),
                        ),
                      ),
                      SizedBox(
                        height: sy(20),
                      ),
                      Text(
                        context.l10n.termsOfUse_Section1Title,
                        style: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w700,
                          fontSize: sy(9),
                        ),
                      ),
                      Text(
                        context.l10n.termsOfUse_Section1Message,
                        style: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w400,
                          fontSize: sy(9),
                        ),
                      ),
                      SizedBox(
                        height: sy(10),
                      ),
                      Text(
                        context.l10n.termsOfUse_Section2Title,
                        style: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w700,
                          fontSize: sy(9),
                        ),
                      ),
                      Text(
                        context.l10n.termsOfUse_Section2Message,
                        style: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w400,
                          fontSize: sy(9),
                        ),
                      ),
                      SizedBox(
                        height: sy(10),
                      ),
                      Text(
                        context.l10n.termsOfUse_Section3Title,
                        style: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w700,
                          fontSize: sy(9),
                        ),
                      ),
                      Text(
                        context.l10n.termsOfUse_Section3Message,
                        style: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w400,
                          fontSize: sy(9),
                        ),
                      ),
                      SizedBox(
                        height: sy(10),
                      ),
                      Text(
                        context.l10n.termsOfUse_Section4Title,
                        style: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w700,
                          fontSize: sy(9),
                        ),
                      ),
                      Text(
                        context.l10n.termsOfUse_Section4Message,
                        style: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w400,
                          fontSize: sy(9),
                        ),
                      ),
                      SizedBox(
                        height: sy(10),
                      ),
                      Text(
                        context.l10n.termsOfUse_Section5Title,
                        style: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w700,
                          fontSize: sy(9),
                        ),
                      ),
                      Text(
                        context.l10n.termsOfUse_Section5Message,
                        style: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w400,
                          fontSize: sy(9),
                        ),
                      ),
                      SizedBox(
                        height: sy(10),
                      ),
                      Text(
                        context.l10n.termsOfUse_Section6Title,
                        style: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w700,
                          fontSize: sy(9),
                        ),
                      ),
                      Text(
                        context.l10n.termsOfUse_Section6Message,
                        style: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w400,
                          fontSize: sy(9),
                        ),
                      ),
                      SizedBox(
                        height: sy(10),
                      ),
                      Text(
                        context.l10n.termsOfUse_Section7Title,
                        style: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w700,
                          fontSize: sy(9),
                        ),
                      ),
                      Text(
                        context.l10n.termsOfUse_Section7Message,
                        style: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w400,
                          fontSize: sy(9),
                        ),
                      ),
                      SizedBox(
                        height: sy(10),
                      ),
                      Text(
                        context.l10n.termsOfUse_ConfirmationText,
                        style: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w400,
                          fontSize: sy(9),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
