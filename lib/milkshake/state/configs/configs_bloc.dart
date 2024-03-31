import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import '../../../shared/models/application_error.dart';
import '../../models/data/flavor.dart';
import '../../models/data/thickness.dart';
import '../../models/data/topping.dart';
import '../../models/repos/abs/milkshake_repository.dart';

part 'configs_event.dart';
part 'configs_state.dart';

@injectable
class ConfigsBloc extends Bloc<ConfigsEvent, ConfigsState> {
  ConfigsBloc({required this.repository}) : super(const ConfigsInitial()) {
    on<GetConfigsEvent>(onGetConfigsEvent);
  }

  Future<void> onGetConfigsEvent(
    GetConfigsEvent event,
    Emitter<ConfigsState> emit,
  ) async {
    try {
      emit(const ConfigsLoading());
      final Either<ApplicationError,
              (List<Flavor>, List<Thickness>, List<Topping>)> response =
          await repository.getConfigs();
      response.fold(
        (l) => emit(ConfigsError(l)),
        (r) => emit(ConfigsLoaded(r.$1, r.$2, r.$3)),
      );
    } catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
      unawaited(Sentry.captureException(e, stackTrace: s));
      emit(ConfigsError(ApplicationError.unknownError()));
    }
  }

  final MilkshakeRepository repository;
}
