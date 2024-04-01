//
//  shakesphere
//  timeline
//
//  Created by Ngonidzashe Mangudya on 01/04/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../shared/configs/colors.dart';
import '../../state/milkshake_order/milkshake_order_bloc.dart';
import 'timeline_item.dart';

class Timeline extends StatefulWidget {
  const Timeline({
    required this.children,
    super.key,
  });

  final List<TimelineItem> children;

  @override
  State<Timeline> createState() => _TillPointTimelineState();
}

class _TillPointTimelineState extends State<Timeline> {
  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return BlocBuilder<MilkshakeOrderBloc, MilkshakeOrderState>(
          builder: (context, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.children
                  .map(
                    (child) => Row(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: sy(25),
                              width: sx(50),
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(1),
                              margin: EdgeInsets.symmetric(
                                horizontal: sx(7),
                                vertical: sy(10),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: state.currentStage >
                                          widget.children.indexOf(child)
                                      ? AppColors.blue
                                      : AppColors.blue,
                                  width: state.currentStage >
                                          widget.children.indexOf(child)
                                      ? 1.5
                                      : 1.5,
                                ),
                                borderRadius: BorderRadius.circular(7),
                                color: state.currentStage ==
                                        widget.children.indexOf(child)
                                    ? state.currentStage >
                                            widget.children.indexOf(child)
                                        ? Colors.white
                                        : AppColors.blue
                                    : Colors.white,
                              ),
                              child: ImageIcon(
                                AssetImage(child.path),
                                color: state.currentStage ==
                                            widget.children.indexOf(child) ||
                                        state.currentStage >
                                            widget.children.indexOf(child)
                                    ? state.currentStage >
                                            widget.children.indexOf(child)
                                        ? AppColors.blue
                                        : Colors.white
                                    : AppColors.blue,
                                size: sy(13),
                              ),
                            ),
                            if (state.currentStage >
                                widget.children.indexOf(child))
                              Positioned(
                                right: sx(0),
                                top: sy(5),
                                child: Container(
                                  height: 19,
                                  width: 19,
                                  decoration: BoxDecoration(
                                    color: AppColors.blue,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors.blue.withOpacity(0.5),
                                        blurRadius: 5,
                                        spreadRadius: 1,
                                      ),
                                    ],
                                  ),
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.check,
                                    color: AppColors.white,
                                    size: sy(8),
                                  ),
                                ),
                              )
                            else
                              const SizedBox.shrink(),
                            Positioned(
                              bottom: 0,
                              child: Text(
                                child.title,
                                style: TextStyle(
                                  fontSize: sy(5),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        if (widget.children.indexOf(child) !=
                            widget.children.length - 1)
                          Container(
                            // if error try using just 10
                            height: sy(5),
                            width: sx(40),
                            decoration: BoxDecoration(
                              color: state.currentStage >
                                      widget.children.indexOf(child)
                                  ? AppColors.blue
                                  : AppColors.blue.withOpacity(0.15),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          )
                        else
                          const SizedBox.shrink(),
                      ],
                    ),
                  )
                  .toList(),
            );
          },
        );
      },
    );
  }
}
