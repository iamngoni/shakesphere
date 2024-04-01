part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  const UserState();
}

class UserInitial extends UserState {
  const UserInitial();

  @override
  List<Object> get props => [];
}

class UserLoading extends UserState {
  const UserLoading();

  @override
  List<Object> get props => [];
}

class UserLoaded extends UserState {
  const UserLoaded(this.user);
  final User user;

  @override
  List<Object> get props => [user];
}

class UserError extends UserState {
  const UserError(this.error);
  final ApplicationError error;

  @override
  List<Object> get props => [error];
}
