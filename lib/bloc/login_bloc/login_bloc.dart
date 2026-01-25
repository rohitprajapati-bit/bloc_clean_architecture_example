import 'package:bloc/bloc.dart';
import 'package:bloc_clean_architecture/repository/auth/login_repository.dart';
import 'package:bloc_clean_architecture/utils/enums.dart';
import 'package:equatable/equatable.dart';

import '../../services/session_manager/session_controller.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginRepository loginRepository;
  LoginBloc({required this.loginRepository}) : super(LoginState()) {
    on<ChangeEmail>(_changeEmail);
    on<ChangePassword>(_changePassword);
    on<SubmitButtonPressed>(_submitButtonPressed);
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

    emit(state.copyWith(loginStatus: Status.loading));

    await loginRepository
        .loginApi(data)
        .then((value) async {
          if (value.error.isNotEmpty) {
            emit(
              state.copyWith(
                massage: value.error.toString(),
                loginStatus: Status.failure,
              ),
            );
          } else {
            await SessionController().svaUserInPreference(value);
            await SessionController().getUserFromPreference();

            emit(
              state.copyWith(
                massage: 'Login Success',
                loginStatus: Status.success,
              ),
            );
          }
        })
        .onError((error, stackTrace) {
          emit(
            state.copyWith(
              massage: error.toString(),
              loginStatus: Status.failure,
            ),
          );
        });
  }
}
