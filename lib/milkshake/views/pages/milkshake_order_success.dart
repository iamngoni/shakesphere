//
//  shakesphere
//  milkshake_order_success
//
//  Created by Ngonidzashe Mangudya on 02/04/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../l10n/l10n.dart';
import '../../../shared/configs/colors.dart';
import '../../../shared/extensions/context.dart';
import '../../../shared/widgets/sj_button.dart';
import '../../models/data/order.dart';

class MilkshakeOrderSuccessPage extends StatelessWidget {
  const MilkshakeOrderSuccessPage({
    required this.order,
    super.key,
  });

  final Order order;

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
                vertical: sy(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.checkmark_seal_fill,
                    color: AppColors.blue,
                    size: sy(100),
                  ),
                  SizedBox(
                    height: sy(20),
                  ),
                  Container(
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              context.l10n.milkshakeOrder_OrderID,
                              style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w400,
                                fontSize: sy(9),
                              ),
                            ),
                            Text(
                              '#${order.orderId}',
                              style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w900,
                                fontSize: sy(9),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              context.l10n.milkshakeOrder_OrderStatus,
                              style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w400,
                                fontSize: sy(9),
                              ),
                            ),
                            Text(
                              context.l10n.milkshakeOrder_OrderStatusValue,
                              style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w900,
                                fontSize: sy(9),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              context.l10n.milkshakeOrder_PaymentMethod,
                              style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w400,
                                fontSize: sy(9),
                              ),
                            ),
                            Text(
                              order.paymentMethod.value,
                              style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w900,
                                fontSize: sy(9),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              context.l10n.milkshakeOrder_SelectPickupTime,
                              style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w400,
                                fontSize: sy(9),
                              ),
                            ),
                            Text(
                              order.pickupTime.readableTime,
                              style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w900,
                                fontSize: sy(9),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${context.l10n.milkshakeOrder_Flavor} (${order.flavor.name})',
                              style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w400,
                                fontSize: sy(9),
                              ),
                            ),
                            Text(
                              'ZAR ${order.flavor.cost.toStringAsFixed(2)}',
                              style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w900,
                                fontSize: sy(9),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${context.l10n.milkshakeOrder_Thickness} (${order.thickness.name})',
                              style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w400,
                                fontSize: sy(9),
                              ),
                            ),
                            Text(
                              'ZAR ${order.thickness.cost.toStringAsFixed(2)}',
                              style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w900,
                                fontSize: sy(9),
                              ),
                            ),
                          ],
                        ),
                        ...order.orderToppings.map(
                          (orderTopping) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  orderTopping.topping.name,
                                  style: TextStyle(
                                    color: AppColors.blue,
                                    fontWeight: FontWeight.w400,
                                    fontSize: sy(9),
                                  ),
                                ),
                                Text(
                                  'ZAR ${orderTopping.topping.cost.toStringAsFixed(2)}',
                                  style: TextStyle(
                                    color: AppColors.blue,
                                    fontWeight: FontWeight.w900,
                                    fontSize: sy(9),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              context.l10n.milkshakeOrder_Discount,
                              style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w400,
                                fontSize: sy(9),
                              ),
                            ),
                            Text(
                              '- ZAR ${order.discount.toStringAsFixed(2)}',
                              style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w900,
                                fontSize: sy(9),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              context.l10n.milkshakeOrder_Tax,
                              style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w400,
                                fontSize: sy(9),
                              ),
                            ),
                            Text(
                              'ZAR ${order.tax.toStringAsFixed(2)}',
                              style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w900,
                                fontSize: sy(9),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: AppColors.border,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${context.l10n.milkshakeOrder_OrderTotal} (x${order.numberOfDrinks} ${context.l10n.milkshakeOrder_Drinks})',
                              style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w700,
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sy(20),
                  ),
                  SjButton(
                    text: context.l10n.done_BtnTitle,
                    onTap: () {
                      context.goBack();
                    },
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
