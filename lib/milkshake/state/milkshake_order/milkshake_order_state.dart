part of 'milkshake_order_bloc.dart';

class MilkshakeOrderState extends Equatable {
  const MilkshakeOrderState(
    this.flavor,
    this.thickness,
    this.toppings,
    this.currentStage,
    this.collectionTime,
    this.paymentMethod,
    this.numberOfDrinks,
  );

  factory MilkshakeOrderState.initial() {
    final TimeOfDay now = TimeOfDay.now();
    // add an hour to the current time
    final TimeOfDay collectionTime = TimeOfDay(
      hour: now.hour + 1,
      minute: now.minute,
    );
    return MilkshakeOrderState(
        null, null, const [], 0, collectionTime, null, 1);
  }

  final Flavor? flavor;
  final Thickness? thickness;
  final List<Topping> toppings;
  final int currentStage;
  final TimeOfDay collectionTime;
  final PaymentMethod? paymentMethod;
  final int numberOfDrinks;

  MilkshakeOrderState copyWith({
    Flavor? flavor,
    Thickness? thickness,
    List<Topping>? toppings,
    int? currentStage,
    TimeOfDay? collectionTime,
    PaymentMethod? paymentMethod,
    int? numberOfDrinks,
  }) {
    return MilkshakeOrderState(
      flavor ?? this.flavor,
      thickness ?? this.thickness,
      toppings ?? this.toppings,
      currentStage ?? this.currentStage,
      collectionTime ?? this.collectionTime,
      paymentMethod ?? this.paymentMethod,
      numberOfDrinks ?? this.numberOfDrinks,
    );
  }

  double get subtotal {
    double total = 0;
    if (flavor != null) {
      total += flavor!.cost;
    }
    if (thickness != null) {
      total += thickness!.cost;
    }
    total += toppings.fold(0, (prev, element) => prev + element.cost);

    total *= numberOfDrinks;

    return total;
  }

  double get taxAmount {
    return subtotal * 0.15;
  }

  double get totalCost {
    double total = subtotal;

    if (currentStage == 4) {
      // add 15% tax
      total += taxAmount;
    }

    return total;
  }

  @override
  List<Object?> get props => [
        flavor,
        thickness,
        toppings,
        currentStage,
        collectionTime,
        paymentMethod,
        numberOfDrinks,
      ];
}
