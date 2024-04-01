part of 'restaurants_bloc.dart';

abstract class RestaurantsEvent extends Equatable {
  const RestaurantsEvent();
}

class GetRestaurantsEvent extends RestaurantsEvent {
  const GetRestaurantsEvent();

  @override
  List<Object> get props => [];
}
