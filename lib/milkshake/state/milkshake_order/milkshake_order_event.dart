part of 'milkshake_order_bloc.dart';

abstract class MilkshakeOrderEvent extends Equatable {
  const MilkshakeOrderEvent();
}

class MoveToStageEvent extends MilkshakeOrderEvent {
  const MoveToStageEvent(this.stage);
  final int stage;

  @override
  List<Object> get props => [stage];
}

class SelectFlavorEvent extends MilkshakeOrderEvent {
  const SelectFlavorEvent(this.flavor);
  final Flavor flavor;

  @override
  List<Object> get props => [flavor];
}

class SelectThicknessEvent extends MilkshakeOrderEvent {
  const SelectThicknessEvent(this.thickness);
  final Thickness thickness;

  @override
  List<Object> get props => [thickness];
}

class SelectToppingEvent extends MilkshakeOrderEvent {
  const SelectToppingEvent(this.topping);
  final Topping topping;

  @override
  List<Object> get props => [topping];
}

class UnselectToppingEvent extends MilkshakeOrderEvent {
  const UnselectToppingEvent(this.topping);
  final Topping topping;

  @override
  List<Object> get props => [topping];
}

class SetCollectionTimeEvent extends MilkshakeOrderEvent {
  const SetCollectionTimeEvent(this.collectionTime);
  final TimeOfDay collectionTime;

  @override
  List<Object> get props => [collectionTime];
}

class SelectPaymentMethodEvent extends MilkshakeOrderEvent {
  const SelectPaymentMethodEvent(this.paymentMethod);
  final PaymentMethod paymentMethod;

  @override
  List<Object> get props => [paymentMethod];
}

class IncrementNumberOfDrinksEvent extends MilkshakeOrderEvent {
  const IncrementNumberOfDrinksEvent();

  @override
  List<Object> get props => [];
}

class DecrementNumberOfDrinksEvent extends MilkshakeOrderEvent {
  const DecrementNumberOfDrinksEvent();

  @override
  List<Object> get props => [];
}

class ClearOrderEvent extends MilkshakeOrderEvent {
  const ClearOrderEvent();

  @override
  List<Object> get props => [];
}
