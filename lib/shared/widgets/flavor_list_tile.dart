//
//  shakesphere
//  flavor_list_tile
//
//  Created by Ngonidzashe Mangudya on 01/04/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../milkshake/models/data/flavor.dart';
import '../../milkshake/state/milkshake_order/milkshake_order_bloc.dart';
import '../configs/colors.dart';

class FlavorListTile extends StatelessWidget {
  const FlavorListTile({
    required this.flavor,
    super.key,
  });

  final Flavor flavor;

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return BlocBuilder<MilkshakeOrderBloc, MilkshakeOrderState>(
          builder: (context, state) {
            return ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                flavor.name,
                style: TextStyle(
                  color: AppColors.blue,
                  fontWeight: FontWeight.w400,
                  fontSize: sy(9),
                ),
              ),
              subtitle: Text(
                'ZAR ${flavor.cost.toStringAsFixed(2)}',
                style: TextStyle(
                  color: AppColors.blue,
                  fontWeight: FontWeight.w900,
                  fontSize: sy(10),
                ),
              ),
              trailing: state.flavor == flavor
                  ? Container(
                      height: sy(15),
                      width: sy(15),
                      decoration: const BoxDecoration(
                        color: AppColors.blue,
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: sy(10),
                      ),
                    )
                  : null,
              onTap: () {
                context
                    .read<MilkshakeOrderBloc>()
                    .add(SelectFlavorEvent(flavor));
              },
            );
          },
        );
      },
    );
  }
}
