//
//  shakesphere
//  topping_list_tile
//
//  Created by Ngonidzashe Mangudya on 01/04/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../shared/configs/colors.dart';
import '../../models/data/topping.dart';
import '../../state/milkshake_order/milkshake_order_bloc.dart';

class ToppingListTile extends StatelessWidget {
  const ToppingListTile({
    required this.topping,
    super.key,
  });

  final Topping topping;

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return BlocBuilder<MilkshakeOrderBloc, MilkshakeOrderState>(
          builder: (context, state) {
            return ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                topping.name,
                style: TextStyle(
                  color: AppColors.blue,
                  fontWeight: FontWeight.w400,
                  fontSize: sy(9),
                ),
              ),
              subtitle: Text(
                'ZAR ${topping.cost.toStringAsFixed(2)}',
                style: TextStyle(
                  color: AppColors.blue,
                  fontWeight: FontWeight.w900,
                  fontSize: sy(10),
                ),
              ),
              trailing: state.toppings.contains(topping)
                  ? Container(
                      height: sy(15),
                      width: sy(15),
                      decoration: const BoxDecoration(
                        color: AppColors.blue,
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '${state.toppings.indexOf(topping) + 1}',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: sy(7),
                        ),
                      ),
                    )
                  : null,
              onTap: () {
                if (state.toppings.contains(topping)) {
                  context.read<MilkshakeOrderBloc>().add(
                        UnselectToppingEvent(topping),
                      );
                } else {
                  context
                      .read<MilkshakeOrderBloc>()
                      .add(SelectToppingEvent(topping));
                }
              },
            );
          },
        );
      },
    );
  }
}
