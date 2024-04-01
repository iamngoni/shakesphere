//
//  shakesphere
//  timeline_list
//
//  Created by Ngonidzashe Mangudya on 01/04/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/material.dart';

import '../../../l10n/l10n.dart';
import 'timeline.dart';
import 'timeline_item.dart';

class TimeLineList extends StatelessWidget {
  const TimeLineList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Timeline(
      children: [
        TimelineItem(
          path: 'assets/icons/milkshake.png',
          title: context.l10n.milkshakeOrder_PickFlavor,
        ),
        TimelineItem(
          path: 'assets/icons/width.png',
          title: context.l10n.milkshakeOrder_Thickness,
        ),
        TimelineItem(
          path: 'assets/icons/toppings.png',
          title: context.l10n.milkshakeOrder_Toppings,
        ),
        TimelineItem(
          path: 'assets/icons/payment.png',
          title: context.l10n.milkshakeOrder_Payment,
        ),
        TimelineItem(
          path: 'assets/icons/checkout.png',
          title: context.l10n.milkshakeOrder_Checkout,
        ),
      ],
    );
  }
}
