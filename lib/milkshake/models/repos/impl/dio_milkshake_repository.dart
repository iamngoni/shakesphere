//
//  shakesphere
//  dio_milkshake_repository
//
//  Created by Ngonidzashe Mangudya on 31/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart' hide Order;
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:sentry_flutter/sentry_flutter.dart';

import '../../../../shared/models/api_response.dart';
import '../../../../shared/models/application_error.dart';
import '../../../../shared/utils/dio_error_to_application_error.dart';
import '../../data/flavor.dart';
import '../../data/order.dart';
import '../../data/restaurant.dart';
import '../../data/thickness.dart';
import '../../data/topping.dart';
import '../../data/user.dart';
import '../../dtos/order_dto.dart';
import '../abs/milkshake_repository.dart';

@LazySingleton(as: MilkshakeRepository)
class DioMilkshakeRepository implements MilkshakeRepository {
  const DioMilkshakeRepository(this.dio);
  final Dio dio;

  @override
  Future<
      Either<ApplicationError,
          (List<Flavor>, List<Thickness>, List<Topping>)>> getConfigs() async {
    try {
      final Response<ApiResponse> response = await dio.get(
        '/milkshakes/configs',
      );

      final ApiResponse apiResponse = response.data!;
      if (apiResponse.status) {
        final List<Flavor> flavors = (apiResponse.data!['flavors'] as List)
            .map((dynamic e) => Flavor.fromJson(e as Map<String, dynamic>))
            .toList();
        final List<Thickness> thicknesses = (apiResponse.data!['thicknesses']
                as List)
            .map((dynamic e) => Thickness.fromJson(e as Map<String, dynamic>))
            .toList();
        final List<Topping> toppings = (apiResponse.data!['toppings'] as List)
            .map((dynamic e) => Topping.fromJson(e as Map<String, dynamic>))
            .toList();
        return Right((flavors, thicknesses, toppings));
      } else {
        return Left(
          ApplicationError(apiResponse.message ?? 'An error occurred'),
        );
      }
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
  Future<Either<ApplicationError, User>> getUser() async {
    try {
      final Response<ApiResponse> response = await dio.get(
        '/patrons/details',
      );

      final ApiResponse apiResponse = response.data!;
      if (apiResponse.status) {
        final User user =
            User.fromJson(apiResponse.data!['user'] as Map<String, dynamic>);
        return Right(user);
      } else {
        return Left(
          ApplicationError(apiResponse.message ?? 'An error occurred'),
        );
      }
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
  Future<Either<ApplicationError, List<Restaurant>>> getRestaurants() async {
    try {
      final Response<ApiResponse> response = await dio.get(
        '/milkshakes/restaurants',
      );

      final ApiResponse apiResponse = response.data!;
      if (apiResponse.status) {
        final List<Restaurant> restaurants = (apiResponse.data!['restaurants']
                as List)
            .map((dynamic e) => Restaurant.fromJson(e as Map<String, dynamic>))
            .toList();
        return Right(restaurants);
      } else {
        return Left(
          ApplicationError(apiResponse.message ?? 'An error occurred'),
        );
      }
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
  Future<Either<ApplicationError, List<Order>>> getOrders() async {
    try {
      final Response<ApiResponse> response = await dio.get(
        '/milkshakes/orders',
      );

      final ApiResponse apiResponse = response.data!;
      if (apiResponse.status) {
        final List<Order> orders = (apiResponse.data!['orders'] as List)
            .map((dynamic e) => Order.fromJson(e as Map<String, dynamic>))
            .toList();
        return Right(orders);
      } else {
        return Left(
          ApplicationError(apiResponse.message ?? 'An error occurred'),
        );
      }
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
  Future<Either<ApplicationError, Order>> placeOrder(OrderDTO dto) async {
    try {
      final Response<ApiResponse> response = await dio.post(
        '/milkshakes/orders',
        data: dto.toJson(),
      );

      final ApiResponse apiResponse = response.data!;
      if (apiResponse.status) {
        final Order order =
            Order.fromJson(apiResponse.data!['order'] as Map<String, dynamic>);
        return Right(order);
      } else {
        return Left(
          ApplicationError(apiResponse.message ?? 'An error occurred'),
        );
      }
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
}
