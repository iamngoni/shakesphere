import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide Order;
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:sentry_flutter/sentry_flutter.dart';

import '../../../shared/models/application_error.dart';
import '../../models/data/order.dart';
import '../../models/dtos/order_dto.dart';
import '../../models/repos/abs/milkshake_repository.dart';

part 'orders_event.dart';
part 'orders_state.dart';

@injectable
class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  OrdersBloc({required this.repository}) : super(const OrdersInitial()) {
    on<GetOrdersEvent>(onGetOrdersEvent);
    on<CreateOrderEvent>(onCreateOrderEvent);
  }

  Future<void> onGetOrdersEvent(
    GetOrdersEvent event,
    Emitter<OrdersState> emit,
  ) async {
    try {
      emit(const OrdersLoading());
      final Either<ApplicationError, List<Order>> response =
          await repository.getOrders();
      response.fold(
        (l) => emit(OrdersError(l)),
        (r) => emit(OrdersLoaded(r)),
      );
    } catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
      unawaited(Sentry.captureException(e, stackTrace: s));
      emit(OrdersError(ApplicationError.unknownError()));
    }
  }

  Future<void> onCreateOrderEvent(
    CreateOrderEvent event,
    Emitter<OrdersState> emit,
  ) async {
    try {
      emit(const OrdersLoading());
      final Either<ApplicationError, Order> response =
          await repository.placeOrder(event.dto);
      response.fold(
        (l) => emit(OrdersError(l)),
        (r) {
          emit(const OrdersLoaded([]));
          add(const GetOrdersEvent());
        },
      );
    } catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
      unawaited(Sentry.captureException(e, stackTrace: s));
      emit(OrdersError(ApplicationError.unknownError()));
    }
  }

  final MilkshakeRepository repository;
}
