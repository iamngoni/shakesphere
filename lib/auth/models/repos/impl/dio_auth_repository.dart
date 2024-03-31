//
//  shakesphere
//  dio_auth_repository
//
//  Created by Ngonidzashe Mangudya on 31/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import '../../../../shared/models/api_response.dart';
import '../../../../shared/models/application_error.dart';
import '../../../../shared/utils/dio_error_to_application_error.dart';
import '../../../../shared/utils/globals.dart';
import '../../dtos/signin_dto.dart';
import '../../dtos/signup_dto.dart';
import '../abs/auth_repository.dart';

@LazySingleton(as: AuthRepository)
class DioAuthRepository implements AuthRepository {
  const DioAuthRepository(this.dio);
  final Dio dio;

  @override
  Future<Either<ApplicationError, void>> isAuthenticated() async {
    try {
      final String? accessToken =
          await $secureStorage.getFromDisk('access_token');
      if (accessToken == null) {
        return Left(ApplicationError('Not Authenticated'));
      }

      final bool isExpired = Jwt.isExpired(accessToken);

      if (isExpired) {
        // clear tokens
        await $secureStorage.removeFromDisk('access_token');
        await $secureStorage.removeFromDisk('refresh_token');
        return Left(ApplicationError('Not Authenticated'));
      }

      return const Right(null);
    } catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
      unawaited(Sentry.captureException(e, stackTrace: s));
      return Left(ApplicationError.unknownError());
    }
  }

  @override
  Future<Either<ApplicationError, void>> signIn(SigninDTO dto) async {
    try {
      final Response<ApiResponse> response = await dio.post(
        '/auth/signin',
        data: dto.toJson(),
      );

      final ApiResponse apiResponse = response.data!;
      if (apiResponse.status) {
        final String accessToken = apiResponse.data!['accessToken'] as String;
        final String refreshToken = apiResponse.data!['refreshToken'] as String;
        await $secureStorage.saveToDisk('access_token', accessToken);
        await $secureStorage.saveToDisk('refresh_token', refreshToken);
        return const Right(null);
      }

      return Left(ApplicationError(apiResponse.message ?? 'An error occurred'));
    } on DioException catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
      unawaited(Sentry.captureException(e, stackTrace: s));
      return Left(dioErrorToApplicationError(e));
    } catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
      unawaited(Sentry.captureException(e, stackTrace: s));
      return left(ApplicationError.unknownError());
    }
  }

  @override
  Future<Either<ApplicationError, void>> signUp(SignupDTO dto) async {
    try {
      final Response<ApiResponse> _ = await dio.post(
        '/auth/signup',
        data: dto.toJson(),
      );
      return const Right(null);
    } on DioException catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
      unawaited(Sentry.captureException(e, stackTrace: s));
      return Left(dioErrorToApplicationError(e));
    } catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
      unawaited(Sentry.captureException(e, stackTrace: s));
      return left(ApplicationError.unknownError());
    }
  }

  @override
  Future<void> signOut() async {
    await $secureStorage.clearDisk();
    $storage.clearDisk();
  }
}
