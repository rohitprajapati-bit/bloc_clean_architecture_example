part of 'login_bloc.dart';

class LoginState extends Equatable {
  final String email;
  final String password;
  // final bool isEmailValid;
  // final bool isPasswordValid;
  // final bool isSubmitting;
  // final bool submitFailure;
  final LoginStatus loginStatus;
  final String massage;

  const LoginState({
    this.email = '',
    this.password = '',
    // this.isEmailValid = false,
    // this.isPasswordValid = false,
    // this.isSubmitting = false,
    // this.submitFailure = false,
    this.loginStatus = LoginStatus.initial,
    this.massage = '',
  });

  LoginState copyWith({
    String? email,
    String? password,
    // bool? isEmailValid,
    // bool? isPasswordValid,
    // bool? isSubmitting,
    // bool? submitFailure,
    LoginStatus? loginStatus,
    String? massage,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      // isEmailValid: isEmailValid ?? this.isEmailValid,
      // isPasswordValid: isPasswordValid ?? this.isPasswordValid,
      // isSubmitting: isSubmitting ?? this.isSubmitting,
      // submitFailure: submitFailure ?? this.submitFailure,
      loginStatus: loginStatus ?? this.loginStatus,
      massage: massage ?? this.massage,
    );
  }

  @override
  List<Object> get props => [
    email,
    password,
    // isEmailValid,
    // isPasswordValid,
    // isSubmitting,
    // submitFailure,
    loginStatus,
    massage,
  ];
}
