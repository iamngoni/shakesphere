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
  const OrdersLoaded(this.orders);
  final List<Order> orders;
  @override
  List<Object> get props => [orders];
}

class OrdersError extends OrdersState {
  const OrdersError(this.error);
  final ApplicationError error;
  @override
  List<Object> get props => [error];
}
