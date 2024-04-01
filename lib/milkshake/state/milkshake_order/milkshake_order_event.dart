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
