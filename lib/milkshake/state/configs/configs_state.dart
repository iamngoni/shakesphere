part of 'configs_bloc.dart';

abstract class ConfigsState extends Equatable {
  const ConfigsState();
}

class ConfigsInitial extends ConfigsState {
  const ConfigsInitial();

  @override
  List<Object> get props => [];
}

class ConfigsLoading extends ConfigsState {
  const ConfigsLoading();

  @override
  List<Object> get props => [];
}

class ConfigsLoaded extends ConfigsState {
  const ConfigsLoaded(this.flavors, this.thicknesses, this.toppings);
  final List<Flavor> flavors;
  final List<Thickness> thicknesses;
  final List<Topping> toppings;

  @override
  List<Object> get props => [flavors, thicknesses, toppings];
}

class ConfigsError extends ConfigsState {
  const ConfigsError(this.error);
  final ApplicationError error;

  @override
  List<Object> get props => [error];
}
