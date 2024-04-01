import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import '../../../shared/models/application_error.dart';
import '../../models/data/restaurant.dart';
import '../../models/repos/abs/milkshake_repository.dart';

part 'restaurants_event.dart';
part 'restaurants_state.dart';

@injectable
class RestaurantsBloc extends Bloc<RestaurantsEvent, RestaurantsState> {
  RestaurantsBloc({required this.repository})
      : super(const RestaurantsInitial()) {
    on<GetRestaurantsEvent>(onGetRestaurantsEvent);
  }

  Future<void> onGetRestaurantsEvent(
    GetRestaurantsEvent event,
    Emitter<RestaurantsState> emit,
  ) async {
    try {
      emit(const RestaurantsLoading());
      final Either<ApplicationError, List<Restaurant>> response =
          await repository.getRestaurants();
      response.fold(
        (l) => emit(RestaurantsError(l)),
        (r) => emit(RestaurantsLoaded(r)),
      );
    } catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
      unawaited(Sentry.captureException(e, stackTrace: s));
      emit(RestaurantsError(ApplicationError.unknownError()));
    }
  }

  final MilkshakeRepository repository;
}
