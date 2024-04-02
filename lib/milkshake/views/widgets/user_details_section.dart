//
//  shakesphere
//  user_details_section
//
//  Created by Ngonidzashe Mangudya on 01/04/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../auth/state/auth/auth_bloc.dart';
import '../../../l10n/l10n.dart';
import '../../../shared/configs/colors.dart';
import '../../../shared/utils/dialogs.dart';
import '../../../shared/utils/modal.dart';
import '../../../shared/widgets/language_selector.dart';
import '../../../shared/widgets/loader.dart';
import '../../state/user/user_bloc.dart';
import 'my_orders_modal.dart';

class UserDetailsSection extends StatelessWidget {
  const UserDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Container(
          height: sy(250),
          width: context.width,
          decoration: const BoxDecoration(
            color: AppColors.blue,
          ),
          child: BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if (state is UserLoading) {
                return const Center(
                  child: LoaderWidget(
                    color: AppColors.white,
                  ),
                );
              }

              if (state is UserLoaded) {
                return Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: const AssetImage(
                            'assets/images/logo.png',
                          ),
                          height: sy(100),
                          width: sy(100),
                        ),
                        Text(
                          '${context.l10n.home_Welcome} ${state.user.firstName} ${state.user.lastName}',
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: sy(12),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: sy(10),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.mail,
                              color: AppColors.white,
                              size: sy(12),
                            ),
                            SizedBox(
                              width: sx(10),
                            ),
                            Text(
                              state.user.email,
                              style: TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: sy(9),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: sy(2),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.phone,
                              color: AppColors.white,
                              size: sy(12),
                            ),
                            SizedBox(
                              width: sx(10),
                            ),
                            Text(
                              state.user.phoneNumber,
                              style: TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: sy(9),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: sy(20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                $showModal(
                                  context,
                                  child: const MyOrdersModal(),
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: sx(15),
                                  vertical: sy(2),
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.green,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text(
                                  context.l10n.home_MyOrders,
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: sy(9),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: sx(20),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: sx(15),
                                vertical: sy(2),
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                context.l10n.home_UpdateProfileBtnTitle,
                                style: TextStyle(
                                  color: AppColors.blue,
                                  fontWeight: FontWeight.w700,
                                  fontSize: sy(9),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: sx(20),
                            ),
                            GestureDetector(
                              onTap: () async {
                                final bool? confirmed =
                                    await showConfirmActionDialog(
                                  title: context.l10n.home_SignOutDialogTitle,
                                  context.l10n.home_SignOutDialogMessage,
                                  context: context,
                                );

                                if (confirmed ?? false) {
                                  context.read<AuthBloc>().add(
                                        const SignOutEvent(),
                                      );
                                }
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: sx(15),
                                  vertical: sy(2),
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.yellow,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text(
                                  context.l10n.home_SignOutBtnTitle,
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: sy(9),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      top: sy(35),
                      right: sx(20),
                      child: const LanguageSelector(),
                    ),
                  ],
                );
              }

              return const SizedBox.shrink();
            },
          ),
        );
      },
    );
  }
}
