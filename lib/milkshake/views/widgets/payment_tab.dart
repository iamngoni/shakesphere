//
//  shakesphere
//  payment_tab
//
//  Created by Ngonidzashe Mangudya on 01/04/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import '../../../../l10n/l10n.dart';
import '../../../../shared/configs/colors.dart';
import '../../../../shared/widgets/loader.dart';
import '../../../injection.dart';
import '../../../shared/extensions/context.dart';
import '../../../shared/models/api_response.dart';
import '../../../shared/utils/functions.dart';
import '../../../shared/utils/modal.dart';
import '../../../shared/widgets/sj_button.dart';
import '../../models/data/discount.dart';
import '../../models/data/payment_method.dart';
import '../../state/configs/configs_bloc.dart';
import '../../state/milkshake_order/milkshake_order_bloc.dart';
import 'discount_modal.dart';
import 'payment_method_tile.dart';

class PaymentTab extends StatefulWidget {
  const PaymentTab({
    super.key,
  });

  @override
  State<PaymentTab> createState() => _PaymentTabState();
}

class _PaymentTabState extends State<PaymentTab> {
  bool checkingDiscount = false;

  Future<void> checkForDiscount() async {
    try {
      setState(() {
        checkingDiscount = true;
      });
      final Dio dio = getIt<Dio>();
      final Response<ApiResponse> response =
          await dio.get('/discounts/check-discount');

      setState(() {
        checkingDiscount = false;
      });

      final ApiResponse apiResponse = response.data!;

      final Discount discount = Discount.fromJson(apiResponse.data!);

      log(discount.toString());

      if (discount.eligible) {
        context.notify(
          context.l10n.milkshakeOrder_DiscountSuccess,
        );

        $showModal(
          context,
          maxHeight: 400,
          child: DiscountModal(discount: discount),
        );
      } else {
        context.notify(
          context.l10n.milkshakeOrder_DiscountFailure,
          isError: true,
        );
      }
    } on DioException catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
      unawaited(Sentry.captureException(e, stackTrace: s));
      context.notify(
        context.l10n.milkshakeOrder_DiscountError,
        isError: true,
      );
      setState(() {
        checkingDiscount = false;
      });
    } catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
      unawaited(Sentry.captureException(e, stackTrace: s));
      context.notify(
        context.l10n.milkshakeOrder_DiscountError,
        isError: true,
      );
      setState(() {
        checkingDiscount = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return BlocBuilder<ConfigsBloc, ConfigsState>(
          builder: (context, state) {
            if (state is ConfigsLoading) {
              return const Center(
                child: LoaderWidget(),
              );
            }

            if (state is ConfigsLoaded) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context
                              .read<MilkshakeOrderBloc>()
                              .add(const MoveToStageEvent(2));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: sx(10),
                            vertical: sy(2),
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.arrow_left,
                                color: AppColors.white,
                                size: sy(12),
                              ),
                              SizedBox(
                                width: sx(10),
                              ),
                              Text(
                                context.l10n.milkshakeOrder_Toppings,
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: sy(8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      BlocBuilder<MilkshakeOrderBloc, MilkshakeOrderState>(
                        builder: (context, state) {
                          return AnimatedSwitcher(
                            duration: 300.milliseconds,
                            child: state.paymentMethod != null
                                ? GestureDetector(
                                    onTap: () {
                                      context
                                          .read<MilkshakeOrderBloc>()
                                          .add(const MoveToStageEvent(4));
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: sx(10),
                                        vertical: sy(2),
                                      ),
                                      decoration: BoxDecoration(
                                        color: AppColors.blue,
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            context
                                                .l10n.milkshakeOrder_Checkout,
                                            style: TextStyle(
                                              color: AppColors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: sy(8),
                                            ),
                                          ),
                                          SizedBox(
                                            width: sx(10),
                                          ),
                                          Icon(
                                            CupertinoIcons.arrow_right,
                                            color: AppColors.white,
                                            size: sy(12),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : SizedBox(
                                    width: sx(100),
                                  ),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: sy(20),
                  ),
                  Text(
                    context.l10n.milkshakeOrder_NumberOfDrinks,
                    style: TextStyle(
                      color: AppColors.blue,
                      fontWeight: FontWeight.w900,
                      fontSize: sy(10),
                    ),
                  ),
                  SizedBox(
                    height: sy(5),
                  ),
                  BlocBuilder<MilkshakeOrderBloc, MilkshakeOrderState>(
                    builder: (context, state) {
                      return Row(
                        children: [
                          Container(
                            height: sy(15),
                            width: sy(15),
                            decoration: const BoxDecoration(
                              color: AppColors.blue,
                              shape: BoxShape.circle,
                            ),
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {
                                if (state.numberOfDrinks > 1) {
                                  context.read<MilkshakeOrderBloc>().add(
                                      const DecrementNumberOfDrinksEvent());
                                }
                              },
                              child: Icon(
                                CupertinoIcons.minus,
                                color: Colors.white,
                                size: sy(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: sx(10),
                          ),
                          Text(
                            state.numberOfDrinks.toString(),
                            style: TextStyle(
                              color: AppColors.blue,
                              fontWeight: FontWeight.w900,
                              fontSize: sy(12),
                            ),
                          ),
                          SizedBox(
                            width: sx(10),
                          ),
                          Container(
                            height: sy(15),
                            width: sy(15),
                            decoration: const BoxDecoration(
                              color: AppColors.blue,
                              shape: BoxShape.circle,
                            ),
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {
                                context
                                    .read<MilkshakeOrderBloc>()
                                    .add(const IncrementNumberOfDrinksEvent());
                              },
                              child: Icon(
                                CupertinoIcons.add,
                                color: Colors.white,
                                size: sy(10),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  SizedBox(
                    height: sy(15),
                  ),
                  Text(
                    context.l10n.milkshakeOrder_SelectPickupTime,
                    style: TextStyle(
                      color: AppColors.blue,
                      fontWeight: FontWeight.w900,
                      fontSize: sy(10),
                    ),
                  ),
                  BlocBuilder<MilkshakeOrderBloc, MilkshakeOrderState>(
                    builder: (context, state) {
                      return GestureDetector(
                        onTap: () async {
                          final TimeOfDay? time = await showTimePicker(
                            context: context,
                            initialTime: state.collectionTime,
                            initialEntryMode: TimePickerEntryMode.input,
                          );
                          if (time != null) {
                            // selected time of day cannot be less than the current time of day
                            final TimeOfDay now = TimeOfDay.now();
                            final TimeOfDay nowPlus15 = TimeOfDay(
                              hour: now.hour,
                              minute: now.minute + 15,
                            );

                            if (isTimeOfDayBefore(time, nowPlus15)) {
                              context.notify(
                                context.l10n.milkshakeOrder_TimeError,
                                isError: true,
                              );
                              return;
                            }

                            context
                                .read<MilkshakeOrderBloc>()
                                .add(SetCollectionTimeEvent(time));
                          }
                        },
                        child: Text(
                          state.collectionTime.format(context),
                          style: TextStyle(
                            color: AppColors.blue,
                            fontWeight: FontWeight.w900,
                            fontSize: sy(12),
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.blue,
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: sy(15),
                  ),
                  BlocBuilder<MilkshakeOrderBloc, MilkshakeOrderState>(
                    builder: (context, state) {
                      return state.discount == null
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  context
                                      .l10n.milkshakeOrder_DiscountEligibility,
                                  style: TextStyle(
                                    color: AppColors.blue,
                                    fontWeight: FontWeight.w900,
                                    fontSize: sy(10),
                                  ),
                                ),
                                SizedBox(
                                  height: sy(3),
                                ),
                                if (checkingDiscount == false)
                                  SizedBox(
                                    width: sx(200),
                                    child: SjButton(
                                      text: context.l10n.milkshakeOrder_Check,
                                      onTap: checkForDiscount,
                                    ),
                                  )
                                else
                                  const LoaderWidget(),
                              ],
                            )
                          : state.discount!.eligible
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      context.l10n.milkshakeOrder_Discount,
                                      style: TextStyle(
                                        color: AppColors.blue,
                                        fontWeight: FontWeight.w900,
                                        fontSize: sy(10),
                                      ),
                                    ),
                                    SizedBox(
                                      height: sy(3),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'ZAR ${state.discount?.discount.toStringAsFixed(2)}',
                                          style: TextStyle(
                                            color: AppColors.blue,
                                            fontWeight: FontWeight.w900,
                                            fontSize: sy(12),
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: AppColors.blue,
                                          ),
                                        ),
                                        SizedBox(
                                          width: sx(20),
                                        ),
                                        SjButton(
                                          text: 'Remove',
                                          icon: Icons.close,
                                          backgroundColor: AppColors.red,
                                          onTap: () {
                                            context
                                                .read<MilkshakeOrderBloc>()
                                                .add(
                                                    const ClearDiscountEvent());
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      context.l10n
                                          .milkshakeOrder_DiscountEligibility,
                                      style: TextStyle(
                                        color: AppColors.blue,
                                        fontWeight: FontWeight.w900,
                                        fontSize: sy(10),
                                      ),
                                    ),
                                    SizedBox(
                                      height: sy(3),
                                    ),
                                    if (checkingDiscount == false)
                                      SizedBox(
                                        width: sx(200),
                                        child: SjButton(
                                          text:
                                              context.l10n.milkshakeOrder_Check,
                                          onTap: checkForDiscount,
                                        ),
                                      )
                                    else
                                      const LoaderWidget(),
                                  ],
                                );
                    },
                  ),
                  SizedBox(
                    height: sy(15),
                  ),
                  Text(
                    context.l10n.milkshakeOrder_SelectPaymentMethod,
                    style: TextStyle(
                      color: AppColors.blue,
                      fontWeight: FontWeight.w900,
                      fontSize: sy(10),
                    ),
                  ),
                  SizedBox(
                    height: sy(10),
                  ),
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: PaymentMethod.values
                          .map<Widget>((p) {
                            return PaymentMethodTile(paymentMethod: p);
                          })
                          .intersperse(
                            const Divider(
                              height: 0,
                              color: AppColors.border,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              );
            }

            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
