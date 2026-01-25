import 'package:bloc_clean_architecture/bloc/login_bloc/login_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordInputWidget extends StatelessWidget {
  final FocusNode passwordFocusNode;
  const PasswordInputWidget({super.key, required this.passwordFocusNode});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        if (kDebugMode) {
          print('password build');
        }
        return TextFormField(
          keyboardType: TextInputType.text,
          focusNode: passwordFocusNode,
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Password is required';
            } else if (value.length < 6) {
              return 'Password must be at least 6 characters long';
            }
            return null;
          },
          onChanged: (value) {
            context.read<LoginBloc>().add(ChangePassword(password: value));
          },
          onFieldSubmitted: (value) {},
        );
      },
    );
  }
}
