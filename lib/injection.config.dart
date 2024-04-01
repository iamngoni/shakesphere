// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shakesphere/auth/models/repos/abs/auth_repository.dart' as _i10;
import 'package:shakesphere/auth/models/repos/impl/dio_auth_repository.dart'
    as _i11;
import 'package:shakesphere/auth/state/auth/auth_bloc.dart' as _i15;
import 'package:shakesphere/milkshake/models/repos/abs/milkshake_repository.dart'
    as _i13;
import 'package:shakesphere/milkshake/models/repos/impl/dio_milkshake_repository.dart'
    as _i14;
import 'package:shakesphere/milkshake/state/configs/configs_bloc.dart' as _i16;
import 'package:shakesphere/milkshake/state/milkshake_order/milkshake_order_bloc.dart'
    as _i5;
import 'package:shakesphere/milkshake/state/restaurants/restaurants_bloc.dart'
    as _i17;
import 'package:shakesphere/milkshake/state/user/user_bloc.dart' as _i18;
import 'package:shakesphere/shared/services/notifications.dart' as _i9;
import 'package:shakesphere/shared/services/secure_storage.dart' as _i7;
import 'package:shakesphere/shared/services/storage.dart' as _i6;
import 'package:shakesphere/shared/services/vibration.dart' as _i8;
import 'package:shakesphere/shared/state/connectivity_status/connectivity_status_bloc.dart'
    as _i4;
import 'package:shakesphere/shared/state/locale/locale_bloc.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.LocaleBloc>(() => _i3.LocaleBloc());
    gh.factory<_i4.ConnectivityStatusBloc>(() => _i4.ConnectivityStatusBloc());
    gh.factory<_i5.MilkshakeOrderBloc>(() => _i5.MilkshakeOrderBloc());
    gh.singletonAsync<_i6.StorageService>(
        () => _i6.StorageService.getInstance());
    gh.singletonAsync<_i7.SecureStorageService>(
        () => _i7.SecureStorageService.getInstance());
    gh.singleton<_i8.VibrationService>(() => _i8.VibrationService());
    gh.singleton<_i9.PushNotifications>(() => _i9.PushNotifications());
    gh.lazySingleton<_i10.AuthRepository>(
        () => _i11.DioAuthRepository(gh<_i12.Dio>()));
    gh.lazySingleton<_i13.MilkshakeRepository>(
        () => _i14.DioMilkshakeRepository(gh<_i12.Dio>()));
    gh.factory<_i15.AuthBloc>(
        () => _i15.AuthBloc(repository: gh<_i10.AuthRepository>()));
    gh.factory<_i16.ConfigsBloc>(
        () => _i16.ConfigsBloc(repository: gh<_i13.MilkshakeRepository>()));
    gh.factory<_i17.RestaurantsBloc>(
        () => _i17.RestaurantsBloc(repository: gh<_i13.MilkshakeRepository>()));
    gh.factory<_i18.UserBloc>(
        () => _i18.UserBloc(repository: gh<_i13.MilkshakeRepository>()));
    return this;
  }
}
