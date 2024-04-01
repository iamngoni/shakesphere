import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import '../../../shared/models/application_error.dart';
import '../../models/data/user.dart';
import '../../models/repos/abs/milkshake_repository.dart';

part 'user_event.dart';
part 'user_state.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({required this.repository}) : super(const UserInitial()) {
    on<GetUserDetailsEvent>(onGetUserDetailsEvent);
  }

  Future<void> onGetUserDetailsEvent(
    GetUserDetailsEvent event,
    Emitter<UserState> emit,
  ) async {
    try {
      emit(const UserLoading());
      final Either<ApplicationError, User> response =
          await repository.getUser();
      response.fold(
        (l) => emit(UserError(l)),
        (r) => emit(UserLoaded(r)),
      );
    } catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
      unawaited(Sentry.captureException(e, stackTrace: s));
      emit(UserError(ApplicationError.unknownError()));
    }
  }

  final MilkshakeRepository repository;
}
