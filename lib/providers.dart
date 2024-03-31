//
//  shakesphere
//  providers
//
//  Created by Ngonidzashe Mangudya on 30/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth/state/auth/auth_bloc.dart';
import 'injection.dart';
import 'shared/state/connectivity_status/connectivity_status_bloc.dart';
import 'shared/state/locale/locale_bloc.dart';

List<BlocProvider> providers = [
  BlocProvider<LocaleBloc>(
    create: (_) => getIt<LocaleBloc>(),
  ),
  BlocProvider<ConnectivityStatusBloc>(
    create: (_) => getIt<ConnectivityStatusBloc>(),
  ),
  BlocProvider<AuthBloc>(
    create: (_) => getIt<AuthBloc>()..add(const CheckAuthEvent()),
  ),
];
