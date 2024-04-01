part of 'milkshake_order_bloc.dart';

class MilkshakeOrderState extends Equatable {
  const MilkshakeOrderState(
    this.flavor,
    this.thickness,
    this.toppings,
    this.currentStage,
  );

  factory MilkshakeOrderState.initial() =>
      const MilkshakeOrderState(null, null, [], 0);

  final Flavor? flavor;
  final Thickness? thickness;
  final List<Topping> toppings;
  final int currentStage;

  MilkshakeOrderState copyWith({
    Flavor? flavor,
    Thickness? thickness,
    List<Topping>? toppings,
    int? currentStage,
  }) {
    return MilkshakeOrderState(
      flavor ?? this.flavor,
      thickness ?? this.thickness,
      toppings ?? this.toppings,
      currentStage ?? this.currentStage,
    );
  }

  double get totalCost {
    double total = 0;
    if (flavor != null) {
      total += flavor!.cost;
    }
    if (thickness != null) {
      total += thickness!.cost;
    }
    total += toppings.fold(0, (prev, element) => prev + element.cost);
    return total;
  }

  @override
  List<Object?> get props => [flavor, thickness, toppings, currentStage];
}
