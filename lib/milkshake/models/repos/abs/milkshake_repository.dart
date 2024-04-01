//
//  shakesphere
//  milkshake_repository
//
//  Created by Ngonidzashe Mangudya on 31/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:dartz/dartz.dart' hide Order;

import '../../../../shared/models/application_error.dart';
import '../../data/flavor.dart';
import '../../data/order.dart';
import '../../data/restaurant.dart';
import '../../data/thickness.dart';
import '../../data/topping.dart';
import '../../data/user.dart';
import '../../dtos/order_dto.dart';

abstract class MilkshakeRepository {
  Future<Either<ApplicationError, User>> getUser();
  Future<
      Either<ApplicationError,
          (List<Flavor>, List<Thickness>, List<Topping>)>> getConfigs();
  Future<Either<ApplicationError, List<Restaurant>>> getRestaurants();
  Future<Either<ApplicationError, List<Order>>> getOrders();
  Future<Either<ApplicationError, Order>> placeOrder(OrderDTO dto);
}
