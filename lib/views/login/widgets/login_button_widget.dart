import 'package:bloc_clean_architecture/bloc/login_bloc/login_bloc.dart';
import 'package:bloc_clean_architecture/config/components/app_loding_widget.dart'
    show AppLodingWidget;
import 'package:bloc_clean_architecture/config/routes/routes_name.dart';
import 'package:bloc_clean_architecture/utils/enums.dart';
import 'package:bloc_clean_architecture/utils/flush_bar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButtonWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const LoginButtonWidget({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        // if (state.loginStatus == LoginStatus.loading) {
        //   ScaffoldMessenger.of(context)
        //     ..hideCurrentSnackBar()
        //     ..showSnackBar(SnackBar(content: Text('Submitting...')));
        // }
        if (state.loginStatus == Status.success) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            RoutesName.homeScreen,
            (route) => false,
          );
          FlushBarHelper.flushBarSuccessMessage('Login Successfully', context);
          // ScaffoldMessenger.of(context)
          //   ..hideCurrentSnackBar()
          //   ..showSnackBar(SnackBar(content: Text('Success')));
        }
        if (state.loginStatus == Status.failure) {
          FlushBarHelper.flushBarErrorMessage('Login Failed', context);
          // ScaffoldMessenger.of(context)
          //   ..hideCurrentSnackBar()
          //   ..showSnackBar(SnackBar(content: Text(state.massage.toString())));
        }
      },

      child: BlocBuilder<LoginBloc, LoginState>(
        buildWhen: (previous, current) =>
            previous.loginStatus != current.loginStatus,
        builder: (context, state) {
          return state.loginStatus == Status.loading
              ? AppLodingWidget()
              : ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.read<LoginBloc>().add(SubmitButtonPressed());
                    }
                  },
                  child: Text('Login'),
                );
        },
      ),
    );
  }
}
