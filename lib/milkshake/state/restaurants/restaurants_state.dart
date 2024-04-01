part of 'restaurants_bloc.dart';

abstract class RestaurantsState extends Equatable {
  const RestaurantsState();
}

class RestaurantsInitial extends RestaurantsState {
  const RestaurantsInitial();
  @override
  List<Object> get props => [];
}

class RestaurantsLoading extends RestaurantsState {
  const RestaurantsLoading();
  @override
  List<Object> get props => [];
}

class RestaurantsLoaded extends RestaurantsState {
  const RestaurantsLoaded(this.restaurants);
  final List<Restaurant> restaurants;

  @override
  List<Object> get props => [restaurants];
}

class RestaurantsError extends RestaurantsState {
  const RestaurantsError(this.error);
  final ApplicationError error;

  @override
  List<Object> get props => [error];
}
