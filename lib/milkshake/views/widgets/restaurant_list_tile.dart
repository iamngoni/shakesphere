//
//  shakesphere
//  restaurant_list_tile
//
//  Created by Ngonidzashe Mangudya on 01/04/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../l10n/l10n.dart';
import '../../../shared/configs/colors.dart';
import '../../../shared/extensions/context.dart';
import '../../models/data/restaurant.dart';
import '../pages/milkshake_order.dart';

class RestaurantListTile extends StatelessWidget {
  const RestaurantListTile({
    required this.restaurant,
    super.key,
  });

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return ListTile(
          contentPadding: EdgeInsets.zero,
          title: Hero(
            tag: restaurant.restaurantId,
            child: Text(
              restaurant.name,
              style: TextStyle(
                color: AppColors.blue,
                fontWeight: FontWeight.w700,
                fontSize: sy(9),
                decoration: TextDecoration.none,
              ),
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
          onTap: () {
            context.goTo(
              page: MilkshakeOrderPage(restaurant: restaurant),
            );
          },
        );
      },
    );
  }
}
