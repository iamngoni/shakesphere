//
//  shakesphere
//  restaurants_list_view
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
import '../../../shared/widgets/loader.dart';
import '../../state/restaurants/restaurants_bloc.dart';

class RestaurantsListView extends StatelessWidget {
  const RestaurantsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Container(
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
                      context.l10n.home_AvailableRestaurants,
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
                          final restaurant = state.restaurants[index];
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  restaurant.address,
                                  style: TextStyle(
                                    color: AppColors.blue.withOpacity(0.8),
                                    fontWeight: FontWeight.w400,
                                    fontSize: sy(8),
                                  ),
                                ),
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
                                        fontSize: sy(8),
                                      ),
                                    ),
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
                        separatorBuilder: (BuildContext context, _) {
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
        );
      },
    );
  }
}
