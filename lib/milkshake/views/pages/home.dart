//
//  shakesphere
//  home
//
//  Created by Ngonidzashe Mangudya on 31/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../auth/state/auth/auth_bloc.dart';
import '../../../auth/views/pages/get_started.dart';
import '../../../l10n/l10n.dart';
import '../../../shared/configs/colors.dart';
import '../../../shared/extensions/context.dart';
import '../../../shared/utils/dialogs.dart';
import '../../../shared/widgets/language_selector.dart';
import '../../../shared/widgets/loader.dart';
import '../../state/restaurants/restaurants_bloc.dart';
import '../../state/user/user_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Scaffold(
          backgroundColor: AppColors.blue,
          body: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is AuthInitial) {
                context.goToAndRemoveUntil(
                  page: const GetStartedPage(),
                );
              }
            },
            child: SizedBox(
              height: context.height,
              width: context.width,
              child: Column(
                children: [
                  Container(
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
                                        'assets/images/logo.png'),
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
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: sx(15),
                                          vertical: sy(2),
                                        ),
                                        decoration: BoxDecoration(
                                          color: AppColors.white,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Text(
                                          context
                                              .l10n.home_UpdateProfileBtnTitle,
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
                                            title: context
                                                .l10n.home_SignOutDialogTitle,
                                            context
                                                .l10n.home_SignOutDialogMessage,
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
                                            borderRadius:
                                                BorderRadius.circular(5),
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
                  ),
                  Expanded(
                    child: Container(
                      height: context.height,
                      width: context.width,
                      padding: EdgeInsets.symmetric(
                        horizontal: sx(20),
                        vertical: sy(10),
                      ),
                      color: AppColors.white,
                      child: BlocBuilder<RestaurantsBloc, RestaurantsState>(
                        builder: (context, state) {
                          if (state is RestaurantsLoading) {
                            return const Center(
                              child: LoaderWidget(),
                            );
                          }

                          if (state is RestaurantsLoaded) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Available Restaurants',
                                  style: TextStyle(
                                    color: AppColors.blue,
                                    fontWeight: FontWeight.w900,
                                    fontSize: sy(10),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.separated(
                                    padding: EdgeInsets.zero,
                                    itemCount: state.restaurants.length,
                                    itemBuilder: (context, index) {
                                      final restaurant =
                                          state.restaurants[index];
                                      return ListTile(
                                        contentPadding: EdgeInsets.zero,
                                        title: Text(
                                          restaurant.name,
                                          style: TextStyle(
                                            color: AppColors.blue,
                                            fontWeight: FontWeight.w700,
                                            fontSize: sy(9),
                                          ),
                                        ),
                                        subtitle: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              restaurant.address,
                                              style: TextStyle(
                                                color: AppColors.blue
                                                    .withOpacity(0.8),
                                                fontWeight: FontWeight.w400,
                                                fontSize: sy(8),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'Opens ',
                                                  style: TextStyle(
                                                    color: AppColors.blue
                                                        .withOpacity(0.8),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: sy(8),
                                                  ),
                                                ),
                                                Text(
                                                  restaurant.startTimeOfDay
                                                      .format(context),
                                                  style: TextStyle(
                                                    color: AppColors.blue,
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: sy(8),
                                                  ),
                                                ),
                                                Text(
                                                  ' Closes ',
                                                  style: TextStyle(
                                                    color: AppColors.blue
                                                        .withOpacity(0.8),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: sy(8),
                                                  ),
                                                ),
                                                Text(
                                                  restaurant.endTimeOfDay
                                                      .format(context),
                                                  style: TextStyle(
                                                    color: AppColors.blue,
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: sy(8),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        trailing: Icon(
                                          CupertinoIcons.arrow_right,
                                          color: AppColors.blue,
                                          size: sy(12),
                                        ),
                                      );
                                    },
                                    separatorBuilder:
                                        (BuildContext context, _) {
                                      return const Divider(
                                        color: AppColors.border,
                                      );
                                    },
                                  ),
                                ),
                              ],
                            );
                          }

                          return const SizedBox.shrink();
                        },
                      ),
                    ),
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
