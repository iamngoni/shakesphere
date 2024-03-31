import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import '../../../shared/models/application_error.dart';
import '../../models/dtos/signin_dto.dart';
import '../../models/dtos/signup_dto.dart';
import '../../models/repos/abs/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this.repository}) : super(const AuthInitial()) {
    on<CheckAuthEvent>(onCheckAuthEvent);
    on<SignupEvent>(onSignUpEvent);
    on<SignInEvent>(onSignInEvent);
  }

  Future<void> onCheckAuthEvent(
    CheckAuthEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthLoading());
      final Either<ApplicationError, void> response =
          await repository.isAuthenticated();
      response.fold(
        (l) => emit(AuthError(l)),
        (_) => emit(const AuthSuccess()),
      );
    } catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
      unawaited(Sentry.captureException(e, stackTrace: s));
      emit(AuthError(ApplicationError.unknownError()));
    }
  }

  Future<void> onSignUpEvent(
    SignupEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthLoading());
      final Either<ApplicationError, void> response =
          await repository.signUp(event.dto);
      response.fold(
        (l) => emit(AuthError(l)),
        (_) => emit(const AuthInitial()),
      );
    } catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
      unawaited(Sentry.captureException(e, stackTrace: s));
      emit(AuthError(ApplicationError.unknownError()));
    }
  }

  Future<void> onSignInEvent(
    SignInEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthLoading());
      final Either<ApplicationError, void> response =
          await repository.signIn(event.dto);
      response.fold(
        (l) => emit(AuthError(l)),
        (_) => emit(const AuthSuccess()),
      );
    } catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
      unawaited(Sentry.captureException(e, stackTrace: s));
      emit(AuthError(ApplicationError.unknownError()));
    }
  }

  final AuthRepository repository;
}
