part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();
}

class AuthInitial extends AuthState {
  const AuthInitial();
  @override
  List<Object> get props => [];
}

class AuthLoading extends AuthState {
  const AuthLoading();
  @override
  List<Object> get props => [];
}

class AuthSuccess extends AuthState {
  const AuthSuccess();
  @override
  List<Object> get props => [];
}

class AuthError extends AuthState {
  const AuthError(this.error);
  final ApplicationError error;

  @override
  List<Object> get props => [error];
}
