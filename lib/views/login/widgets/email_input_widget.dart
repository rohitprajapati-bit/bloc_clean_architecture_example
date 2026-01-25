import 'package:bloc_clean_architecture/bloc/login_bloc/login_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailInputWidget extends StatelessWidget {
  final FocusNode emailFocusNode;
  const EmailInputWidget({super.key, required this.emailFocusNode});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        if (kDebugMode) {
          print('email build');
        }
        return TextFormField(
          keyboardType: TextInputType.emailAddress,
          focusNode: emailFocusNode,
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter an email address';
            }
            // if (!Validations.isValidEmail(value)) {
            //   return 'Please enter a valid email address';
            // }
            return null;
          },

          onChanged: (value) {
            context.read<LoginBloc>().add(ChangeEmail(email: value));
          },
          onFieldSubmitted: (value) {},
        );
      },
    );
  }
}
