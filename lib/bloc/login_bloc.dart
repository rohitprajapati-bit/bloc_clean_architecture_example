import 'package:bloc/bloc.dart';
import 'package:bloc_clean_architecture/repository/auth/login_repository.dart';
import 'package:bloc_clean_architecture/utils/enums.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginRepository loginRepository = LoginRepository();
  LoginBloc() : super(LoginState()) {
    on<ChangeEmail>(_changeEmail);
    on<ChangePassword>(_changePassword);

    on<SubmitButtonPressed>(_submitButtonPressed);

    // on<UnFocusEmail>(_unFocusEmail);
    // on<UnFocusPassword>(_unFocusPassword);
  }

  void _changeEmail(ChangeEmail event, Emitter<LoginState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _changePassword(ChangePassword event, Emitter<LoginState> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _submitButtonPressed(
    SubmitButtonPressed event,
    Emitter<LoginState> emit,
  ) async {
    Map data = {"username": state.email, "password": state.password};

    emit(state.copyWith(loginStatus: LoginStatus.loading));

    await loginRepository
        .loginAPi(data)
        .then((value) {
          if (value.error.isNotEmpty) {
            emit(
              state.copyWith(
                massage: value.error.toString(),
                loginStatus: LoginStatus.failure,
              ),
            );
          } else {
            emit(
              state.copyWith(
                massage: value.token,
                loginStatus: LoginStatus.success,
              ),
            );
          }
        })
        .onError((error, stackTrace) {
          emit(
            state.copyWith(
              massage: error.toString(),
              loginStatus: LoginStatus.failure,
            ),
          );
        });
  }
}
