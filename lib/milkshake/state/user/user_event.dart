part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();
}

class GetUserDetailsEvent extends UserEvent {
  const GetUserDetailsEvent();

  @override
  List<Object> get props => [];
}
