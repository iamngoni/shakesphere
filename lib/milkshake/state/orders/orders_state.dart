part of 'orders_bloc.dart';

abstract class OrdersState extends Equatable {
  const OrdersState();
}

class OrdersInitial extends OrdersState {
  const OrdersInitial();
  @override
  List<Object> get props => [];
}

class OrdersLoading extends OrdersState {
  const OrdersLoading();
  @override
  List<Object> get props => [];
}

class OrdersLoaded extends OrdersState {
  const OrdersLoaded(this.orders, {this.afterCheckout = false});
  final List<Order> orders;
  final bool afterCheckout;
  @override
  List<Object> get props => [orders, afterCheckout];
}

class OrdersError extends OrdersState {
  const OrdersError(this.error);
  final ApplicationError error;
  @override
  List<Object> get props => [error];
}
