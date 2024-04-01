//
//  shakesphere
//  pick_flavors_tab
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
import '../../../shared/widgets/flavor_list_tile.dart';
import '../../../shared/widgets/loader.dart';
import '../../state/configs/configs_bloc.dart';
import '../../state/milkshake_order/milkshake_order_bloc.dart';

class PickFlavorsTab extends StatelessWidget {
  const PickFlavorsTab({
    super.key,
  });

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
                      Text(
                        context.l10n.milkshakeOrder_PickFlavor,
                        style: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w900,
                          fontSize: sy(10),
                        ),
                      ),
                      BlocBuilder<MilkshakeOrderBloc, MilkshakeOrderState>(
                        builder: (context, state) {
                          return AnimatedSwitcher(
                            duration: 300.milliseconds,
                            child: state.flavor != null
                                ? GestureDetector(
                                    onTap: () {
                                      context
                                          .read<MilkshakeOrderBloc>()
                                          .add(const MoveToStageEvent(1));
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
                                                .l10n.milkshakeOrder_Thickness,
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
                                : const SizedBox.shrink(),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: sy(10),
                  ),
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.zero,
                      itemCount: state.flavors.length,
                      itemBuilder: (context, index) {
                        final flavor = state.flavors[index];
                        return FlavorListTile(flavor: flavor);
                      },
                      separatorBuilder: (context, _) => const Divider(
                        color: AppColors.border,
                        height: 0,
                      ),
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
