import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../models/data/flavor.dart';
import '../../models/data/payment_method.dart';
import '../../models/data/thickness.dart';
import '../../models/data/topping.dart';

part 'milkshake_order_event.dart';
part 'milkshake_order_state.dart';

@injectable
class MilkshakeOrderBloc
    extends Bloc<MilkshakeOrderEvent, MilkshakeOrderState> {
  MilkshakeOrderBloc() : super(MilkshakeOrderState.initial()) {
    on<MoveToStageEvent>(onMoveToStageEvent);
    on<SelectFlavorEvent>(onSelectFlavorEvent);
    on<SelectThicknessEvent>(onSelectThicknessEvent);
    on<SelectToppingEvent>(onSelectToppingEvent);
    on<UnselectToppingEvent>(onUnselectToppingEvent);
    on<SetCollectionTimeEvent>(onSetCollectionTimeEvent);
    on<SelectPaymentMethodEvent>(onSelectPaymentMethodEvent);
    on<IncrementNumberOfDrinksEvent>(onIncreaseNumberOfDrinksEvent);
    on<DecrementNumberOfDrinksEvent>(onDecreaseNumberOfDrinksEvent);
    on<ClearOrderEvent>(onClearOrderEvent);
  }

  Future<void> onMoveToStageEvent(
    MoveToStageEvent event,
    Emitter<MilkshakeOrderState> emit,
  ) async {
    emit(state.copyWith(currentStage: event.stage));
  }

  Future<void> onSelectFlavorEvent(
    SelectFlavorEvent event,
    Emitter<MilkshakeOrderState> emit,
  ) async {
    emit(state.copyWith(flavor: event.flavor));
  }

  Future<void> onSelectThicknessEvent(
    SelectThicknessEvent event,
    Emitter<MilkshakeOrderState> emit,
  ) async {
    emit(state.copyWith(thickness: event.thickness));
  }

  Future<void> onSelectToppingEvent(
    SelectToppingEvent event,
    Emitter<MilkshakeOrderState> emit,
  ) async {
    emit(state.copyWith(toppings: [...state.toppings, event.topping]));
  }

  Future<void> onUnselectToppingEvent(
    UnselectToppingEvent event,
    Emitter<MilkshakeOrderState> emit,
  ) async {
    emit(
      state.copyWith(
        toppings: state.toppings
            .where((topping) => topping != event.topping)
            .toList(),
      ),
    );
  }

  Future<void> onSetCollectionTimeEvent(
    SetCollectionTimeEvent event,
    Emitter<MilkshakeOrderState> emit,
  ) async {
    emit(state.copyWith(collectionTime: event.collectionTime));
  }

  Future<void> onSelectPaymentMethodEvent(
    SelectPaymentMethodEvent event,
    Emitter<MilkshakeOrderState> emit,
  ) async {
    emit(state.copyWith(paymentMethod: event.paymentMethod));
  }

  Future<void> onIncreaseNumberOfDrinksEvent(
    IncrementNumberOfDrinksEvent event,
    Emitter<MilkshakeOrderState> emit,
  ) async {
    emit(state.copyWith(numberOfDrinks: state.numberOfDrinks + 1));
  }

  Future<void> onDecreaseNumberOfDrinksEvent(
    DecrementNumberOfDrinksEvent event,
    Emitter<MilkshakeOrderState> emit,
  ) async {
    emit(state.copyWith(numberOfDrinks: state.numberOfDrinks - 1));
  }

  Future<void> onClearOrderEvent(
    ClearOrderEvent event,
    Emitter<MilkshakeOrderState> emit,
  ) async {
    emit(MilkshakeOrderState.initial());
  }
}
