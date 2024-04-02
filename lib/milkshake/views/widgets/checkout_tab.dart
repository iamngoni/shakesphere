//
//  shakesphere
//  checkout_tab
//
//  Created by Ngonidzashe Mangudya on 01/04/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../../l10n/l10n.dart';
import '../../../../shared/configs/colors.dart';
import '../../../shared/widgets/sj_button.dart';
import '../../models/data/restaurant.dart';
import '../../models/dtos/order_dto.dart';
import '../../state/milkshake_order/milkshake_order_bloc.dart';
import '../../state/orders/orders_bloc.dart';

class CheckoutTab extends StatelessWidget {
  const CheckoutTab({
    required this.restaurant,
    super.key,
  });

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    context
                        .read<MilkshakeOrderBloc>()
                        .add(const MoveToStageEvent(3));
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
                          context.l10n.milkshakeOrder_Payment,
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
              ],
            ),
            SizedBox(
              height: sy(20),
            ),
            Text(
              context.l10n.milkshakeOrder_OrderSummary,
              style: TextStyle(
                color: AppColors.blue,
                fontWeight: FontWeight.w900,
                fontSize: sy(10),
              ),
            ),
            SizedBox(
              height: sy(10),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: sx(20),
                vertical: sy(10),
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.border,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: BlocBuilder<MilkshakeOrderBloc, MilkshakeOrderState>(
                builder: (context, state) {
                  return ListView(
                    shrinkWrap: true,
                    children: [
                      Row(
                        children: [
                          Text(
                            context.l10n.milkshakeOrder_Flavor,
                            style: TextStyle(
                              color: AppColors.blue,
                              fontWeight: FontWeight.w400,
                              fontSize: sy(9),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'ZAR ${state.flavor?.cost.toStringAsFixed(2)}',
                            style: TextStyle(
                              color: AppColors.blue,
                              fontWeight: FontWeight.w900,
                              fontSize: sy(10),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            context.l10n.milkshakeOrder_Thickness,
                            style: TextStyle(
                              color: AppColors.blue,
                              fontWeight: FontWeight.w400,
                              fontSize: sy(9),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'ZAR ${state.thickness?.cost.toStringAsFixed(2)}',
                            style: TextStyle(
                              color: AppColors.blue,
                              fontWeight: FontWeight.w900,
                              fontSize: sy(10),
                            ),
                          ),
                        ],
                      ),
                      ...state.toppings.map(
                        (topping) => Row(
                          children: [
                            Text(
                              topping.name,
                              style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w400,
                                fontSize: sy(9),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              'ZAR ${topping.cost.toStringAsFixed(2)}',
                              style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w900,
                                fontSize: sy(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (state.discount != null && state.discount!.eligible)
                        Row(
                          children: [
                            Text(
                              context.l10n.milkshakeOrder_Discount,
                              style: TextStyle(
                                color: AppColors.yellow,
                                fontWeight: FontWeight.w400,
                                fontSize: sy(9),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              '- ZAR ${state.discount!.discount.toStringAsFixed(2)}',
                              style: TextStyle(
                                color: AppColors.yellow,
                                fontWeight: FontWeight.w900,
                                fontSize: sy(10),
                              ),
                            ),
                          ],
                        )
                      else
                        const SizedBox.shrink(),
                      const Divider(
                        color: AppColors.border,
                      ),
                      Row(
                        children: [
                          Text(
                            '${context.l10n.milkshakeOrder_Subtotal} (x${state.numberOfDrinks} ${context.l10n.milkshakeOrder_Drinks})',
                            style: TextStyle(
                              color: AppColors.blue,
                              fontWeight: FontWeight.w400,
                              fontSize: sy(9),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'ZAR ${state.subtotal.toStringAsFixed(2)}',
                            style: TextStyle(
                              color: AppColors.blue,
                              fontWeight: FontWeight.w900,
                              fontSize: sy(10),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            context.l10n.milkshakeOrder_Tax,
                            style: TextStyle(
                              color: AppColors.blue,
                              fontWeight: FontWeight.w400,
                              fontSize: sy(9),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'ZAR ${state.taxAmount.toStringAsFixed(2)}',
                            style: TextStyle(
                              color: AppColors.blue,
                              fontWeight: FontWeight.w900,
                              fontSize: sy(10),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            context.l10n.milkshakeOrder_OrderTotal,
                            style: TextStyle(
                              color: AppColors.blue,
                              fontWeight: FontWeight.w400,
                              fontSize: sy(9),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'ZAR ${state.totalCost.toStringAsFixed(2)}',
                            style: TextStyle(
                              color: AppColors.blue,
                              fontWeight: FontWeight.w900,
                              fontSize: sy(10),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: sy(20),
            ),
            SjButton(
              text: context.l10n.milkshakeOrder_Checkout,
              onTap: () {
                final MilkshakeOrderState state =
                    context.read<MilkshakeOrderBloc>().state;

                final OrderDTO dto = OrderDTO(
                  restaurantId: restaurant.restaurantId,
                  flavorId: state.flavor!.flavorId,
                  thicknessId: state.thickness!.thicknessId,
                  toppings: state.toppings.map((e) => e.toppingId).toList(),
                  paymentMethod: state.paymentMethod!,
                  pickupTime: DateTime.now().copyWith(
                    hour: state.collectionTime.hour,
                    minute: state.collectionTime.minute,
                  ),
                  numberOfDrinks: state.numberOfDrinks,
                  discount: state.discount != null && state.discount!.eligible
                      ? state.discount!.discount
                      : 0,
                );

                context.read<OrdersBloc>().add(CreateOrderEvent(dto));
              },
            ),
          ],
        );
      },
    );
  }
}
