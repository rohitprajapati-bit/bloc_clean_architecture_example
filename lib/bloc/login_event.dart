part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class ChangeEmail extends LoginEvent {
  final String email;

  const ChangeEmail({required this.email});

  @override
  List<Object> get props => [email];
}

class UnFocusEmail extends LoginEvent {}

class ChangePassword extends LoginEvent {
  final String password;

  const ChangePassword({required this.password});

  @override
  List<Object> get props => [password];
}

class UnFocusPassword extends LoginEvent {}

class SubmitButtonPressed extends LoginEvent {}
