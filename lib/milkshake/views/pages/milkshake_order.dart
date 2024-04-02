//
//  shakesphere
//  milkshake_order
//
//  Created by Ngonidzashe Mangudya on 01/04/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../l10n/l10n.dart';
import '../../../shared/configs/colors.dart';
import '../../../shared/extensions/context.dart';
import '../../../shared/widgets/loader.dart';
import '../../models/data/restaurant.dart';
import '../../state/milkshake_order/milkshake_order_bloc.dart';
import '../../state/orders/orders_bloc.dart';
import '../widgets/checkout_tab.dart';
import '../widgets/payment_tab.dart';
import '../widgets/pick_flavors_tab.dart';
import '../widgets/select_thickness_tab.dart';
import '../widgets/timeline_list.dart';
import '../widgets/toppings_tab.dart';
import 'milkshake_order_success.dart';

class MilkshakeOrderPage extends StatelessWidget {
  const MilkshakeOrderPage({required this.restaurant, super.key});

  final Restaurant restaurant;

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
              child: BlocConsumer<OrdersBloc, OrdersState>(
                listener: (context, state) {
                  if (state is OrdersLoaded) {
                    if (state.afterCheckout) {
                      context
                        ..notify(context.l10n.milkshakeOrder_OrderPlaced)
                        ..read<MilkshakeOrderBloc>()
                            .add(const ClearOrderEvent())
                        ..goToAndReplace(
                          page: MilkshakeOrderSuccessPage(
                            order: state.orders.first,
                          ),
                        );
                    }
                  }

                  if (state is OrdersError) {
                    context.notify(
                      state.error.message,
                      isError: true,
                    );
                  }
                },
                builder: (context, state) {
                  if (state is OrdersLoading) {
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
                            child: Row(
                              children: [
                                Icon(
                                  CupertinoIcons.arrow_left,
                                  color: AppColors.blue,
                                  size: sy(12),
                                ),
                                SizedBox(
                                  width: sx(10),
                                ),
                                Text(
                                  context.l10n.milkshakeOrder_Restaurants,
                                  style: TextStyle(
                                    color: AppColors.blue,
                                    fontWeight: FontWeight.w700,
                                    fontSize: sy(8),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                context.l10n.milkshakeOrder_TotalAmount,
                                style: TextStyle(
                                  color: AppColors.blue.withOpacity(0.8),
                                  fontWeight: FontWeight.w700,
                                  fontSize: sy(7),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'ZAR',
                                    style: TextStyle(
                                      color: AppColors.blue,
                                      fontWeight: FontWeight.w900,
                                      fontSize: sy(15),
                                    ),
                                  ),
                                  BlocBuilder<MilkshakeOrderBloc,
                                      MilkshakeOrderState>(
                                    builder: (context, state) {
                                      return AnimatedSwitcher(
                                        duration: 200.milliseconds,
                                        transitionBuilder: (Widget child,
                                            Animation<double> animation) {
                                          return SlideTransition(
                                            position: Tween<Offset>(
                                              begin: const Offset(0, -0.2),
                                              end: Offset.zero,
                                            ).animate(animation),
                                            child: child,
                                          );
                                        },
                                        child: Text(
                                          ' ${state.totalCost.toStringAsFixed(2)}',
                                          key:
                                              ValueKey<double>(state.totalCost),
                                          style: TextStyle(
                                            color: AppColors.blue,
                                            fontWeight: FontWeight.w900,
                                            fontSize: sy(15),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: sy(10),
                      ),
                      Container(
                        width: context.width,
                        padding: EdgeInsets.symmetric(
                          horizontal: sx(20),
                          vertical: sy(5),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.border),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  context.l10n.milkshakeOrder_RestaurantName,
                                  style: TextStyle(
                                    color: AppColors.blue,
                                    fontWeight: FontWeight.w400,
                                    fontSize: sy(7),
                                  ),
                                ),
                                Hero(
                                  tag: restaurant.restaurantId,
                                  child: Text(
                                    restaurant.name,
                                    style: TextStyle(
                                      color: AppColors.blue,
                                      fontWeight: FontWeight.w900,
                                      fontSize: sy(9),
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '${context.l10n.home_Restaurant_Opens} ',
                                      style: TextStyle(
                                        color: AppColors.blue.withOpacity(0.8),
                                        fontWeight: FontWeight.w400,
                                        fontSize: sy(8),
                                      ),
                                    ),
                                    Text(
                                      restaurant.startTimeOfDay.format(context),
                                      style: TextStyle(
                                        color: AppColors.blue,
                                        fontWeight: FontWeight.w900,
                                        fontSize: sy(9),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      ' ${context.l10n.home_Restaurant_Closes} ',
                                      style: TextStyle(
                                        color: AppColors.blue.withOpacity(0.8),
                                        fontWeight: FontWeight.w400,
                                        fontSize: sy(8),
                                      ),
                                    ),
                                    Text(
                                      restaurant.endTimeOfDay.format(context),
                                      style: TextStyle(
                                        color: AppColors.blue,
                                        fontWeight: FontWeight.w900,
                                        fontSize: sy(9),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: sy(10),
                      ),
                      const TimeLineList(),
                      Divider(
                        color: AppColors.border,
                        height: sy(20),
                      ),
                      Expanded(
                        child: BlocBuilder<MilkshakeOrderBloc,
                            MilkshakeOrderState>(
                          builder: (context, state) {
                            return switch (state.currentStage) {
                              0 => const PickFlavorsTab(),
                              1 => const SelectThicknessTab(),
                              2 => const ToppingsTab(),
                              3 => const PaymentTab(),
                              4 => CheckoutTab(restaurant: restaurant),
                              _ => const SizedBox.shrink(),
                            };
                          },
                        ),
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
