part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
}

class CheckAuthEvent extends AuthEvent {
  const CheckAuthEvent();

  @override
  List<Object> get props => [];
}

class SignupEvent extends AuthEvent {
  const SignupEvent(this.dto);
  final SignupDTO dto;

  @override
  List<Object> get props => [dto];
}

class SignInEvent extends AuthEvent {
  const SignInEvent(this.dto);
  final SigninDTO dto;

  @override
  List<Object> get props => [dto];
}

class SignOutEvent extends AuthEvent {
  const SignOutEvent();

  @override
  List<Object> get props => [];
}
