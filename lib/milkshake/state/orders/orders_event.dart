part of 'orders_bloc.dart';

abstract class OrdersEvent extends Equatable {
  const OrdersEvent();
}

class GetOrdersEvent extends OrdersEvent {
  const GetOrdersEvent();

  @override
  List<Object> get props => [];
}

class CreateOrderEvent extends OrdersEvent {
  const CreateOrderEvent(this.dto);
  final OrderDTO dto;

  @override
  List<Object> get props => [dto];
}
