import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../models/data/flavor.dart';
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
}
