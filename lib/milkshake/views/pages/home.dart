//
//  shakesphere
//  home
//
//  Created by Ngonidzashe Mangudya on 31/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../auth/state/auth/auth_bloc.dart';
import '../../../auth/views/pages/get_started.dart';
import '../../../shared/configs/colors.dart';
import '../../../shared/extensions/context.dart';
import '../widgets/restaurants_list_view.dart';
import '../widgets/user_details_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Scaffold(
          backgroundColor: AppColors.blue,
          body: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is AuthInitial) {
                context.goToAndRemoveUntil(
                  page: const GetStartedPage(),
                );
              }
            },
            child: SizedBox(
              height: context.height,
              width: context.width,
              child: const Column(
                children: [
                  UserDetailsSection(),
                  Expanded(
                    child: RestaurantsListView(),
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
