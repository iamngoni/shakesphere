//
//  shakesphere
//  discount_modal
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
import '../../../shared/widgets/sj_button.dart';
import '../../models/data/discount.dart';
import '../../state/milkshake_order/milkshake_order_bloc.dart';

class DiscountModal extends StatelessWidget {
  const DiscountModal({required this.discount, super.key});

  final Discount discount;

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
              vertical: sy(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      context.l10n.milkshakeOrder_Discount,
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
                SizedBox(
                  height: sy(20),
                ),
                Center(
                  child: Text(
                    'ZAR ${discount.discount.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: AppColors.blue,
                      fontWeight: FontWeight.w900,
                      fontSize: sy(25),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: sy(20),
                ),
                SjButton(
                  text: context.l10n.milkshakeOrder_ApplyDiscount,
                  onTap: () {
                    context
                      ..read<MilkshakeOrderBloc>()
                          .add(ApplyDiscountEvent(discount))
                      ..goBack();
                  },
                ),
                SizedBox(
                  height: sy(10),
                ),
                SjButton(
                  text: context.l10n.milkshakeOrder_Dismiss,
                  icon: Icons.close,
                  backgroundColor: AppColors.red,
                  onTap: () {
                    context.goBack();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
