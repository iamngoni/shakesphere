//
//  shakesphere
//  my_orders_modal
//
//  Created by Ngonidzashe Mangudya on 02/04/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../l10n/l10n.dart';
import '../../../shared/configs/colors.dart';
import '../../../shared/extensions/context.dart';
import '../../../shared/widgets/loader.dart';
import '../../state/orders/orders_bloc.dart';

class MyOrdersModal extends StatelessWidget {
  const MyOrdersModal({super.key});

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      context.l10n.home_MyOrders,
                      style: TextStyle(
                        color: AppColors.blue,
                        fontWeight: FontWeight.w900,
                        fontSize: sy(10),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.goBack();
                      },
                      child: Container(
                        height: sy(15),
                        width: sy(15),
                        decoration: const BoxDecoration(
                          color: AppColors.blue,
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: sy(10),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: AppColors.border,
                  height: sy(15),
                ),
                Expanded(
                  child: BlocBuilder<OrdersBloc, OrdersState>(
                    builder: (context, state) {
                      if (state is OrdersLoading) {
                        return const Center(
                          child: LoaderWidget(),
                        );
                      }

                      if (state is OrdersLoaded) {
                        if (state.orders.isEmpty) {
                          return Center(
                            child: Text(
                              context.l10n.home_NoOrders,
                              style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w900,
                                fontSize: sy(10),
                              ),
                            ),
                          );
                        }

                        return RefreshIndicator(
                          onRefresh: () async {
                            context.read<OrdersBloc>().add(
                                  const GetOrdersEvent(),
                                );
                          },
                          child: ListView.builder(
                            itemCount: state.orders.length,
                            itemBuilder: (context, index) {
                              final order = state.orders[index];
                              return ListTile(
                                contentPadding: EdgeInsets.zero,
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${context.l10n.home_Order} #${order.orderId} (x${order.numberOfDrinks} ${context.l10n.milkshakeOrder_Drinks})',
                                      style: TextStyle(
                                        color: AppColors.blue,
                                        fontWeight: FontWeight.w400,
                                        fontSize: sy(9),
                                      ),
                                    ),
                                    Text(
                                      'ZAR ${order.total.toStringAsFixed(2)}',
                                      style: TextStyle(
                                        color: AppColors.blue,
                                        fontWeight: FontWeight.w900,
                                        fontSize: sy(12),
                                      ),
                                    ),
                                  ],
                                ),
                                subtitle: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: sx(10),
                                    vertical: sy(5),
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.blue.withOpacity(0.1),
                                    border: Border.all(
                                      color: AppColors.border,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '${context.l10n.milkshakeOrder_Flavor} (${order.flavor.name})',
                                            style: TextStyle(
                                              color: AppColors.blue,
                                              fontWeight: FontWeight.w400,
                                              fontSize: sy(7),
                                            ),
                                          ),
                                          Text(
                                            'ZAR ${order.flavor.cost.toStringAsFixed(2)}',
                                            style: TextStyle(
                                              color: AppColors.blue,
                                              fontWeight: FontWeight.w900,
                                              fontSize: sy(7),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '${context.l10n.milkshakeOrder_Thickness} (${order.thickness.name})',
                                            style: TextStyle(
                                              color: AppColors.blue,
                                              fontWeight: FontWeight.w400,
                                              fontSize: sy(7),
                                            ),
                                          ),
                                          Text(
                                            'ZAR ${order.thickness.cost.toStringAsFixed(2)}',
                                            style: TextStyle(
                                              color: AppColors.blue,
                                              fontWeight: FontWeight.w900,
                                              fontSize: sy(7),
                                            ),
                                          ),
                                        ],
                                      ),
                                      ...order.orderToppings.map(
                                        (orderTopping) {
                                          return Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                orderTopping.topping.name,
                                                style: TextStyle(
                                                  color: AppColors.blue,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: sy(7),
                                                ),
                                              ),
                                              Text(
                                                'ZAR ${orderTopping.topping.cost.toStringAsFixed(2)}',
                                                style: TextStyle(
                                                  color: AppColors.blue,
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: sy(7),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            context.l10n.milkshakeOrder_Tax,
                                            style: TextStyle(
                                              color: AppColors.blue,
                                              fontWeight: FontWeight.w400,
                                              fontSize: sy(7),
                                            ),
                                          ),
                                          Text(
                                            'ZAR ${order.tax.toStringAsFixed(2)}',
                                            style: TextStyle(
                                              color: AppColors.blue,
                                              fontWeight: FontWeight.w900,
                                              fontSize: sy(7),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Divider(
                                        color: AppColors.border,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            context.l10n
                                                .milkshakeOrder_PaymentMethod,
                                            style: TextStyle(
                                              color: AppColors.blue,
                                              fontWeight: FontWeight.w400,
                                              fontSize: sy(7),
                                            ),
                                          ),
                                          Text(
                                            order.paymentMethod.value,
                                            style: TextStyle(
                                              color: AppColors.blue,
                                              fontWeight: FontWeight.w900,
                                              fontSize: sy(7),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            context.l10n
                                                .milkshakeOrder_SelectPickupTime,
                                            style: TextStyle(
                                              color: AppColors.blue,
                                              fontWeight: FontWeight.w400,
                                              fontSize: sy(7),
                                            ),
                                          ),
                                          Text(
                                            order.pickupTime.readableTime,
                                            style: TextStyle(
                                              color: AppColors.blue,
                                              fontWeight: FontWeight.w900,
                                              fontSize: sy(7),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: () {},
                              );
                            },
                          ),
                        );
                      }

                      return const SizedBox.shrink();
                    },
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
