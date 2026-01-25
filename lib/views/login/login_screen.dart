import 'package:bloc_clean_architecture/bloc/login_bloc/login_bloc.dart';
import 'package:bloc_clean_architecture/dependency_injection/locator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  late LoginBloc _loginBloc;

  @override
  void initState() {
    _loginBloc = LoginBloc(loginRepository: getIt());
    super.initState();
  }
  @override
  void dispose() {
    _loginBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print('Login Screen');
    }
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: BlocProvider(
        create: (_) => _loginBloc,
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                EmailInputWidget(emailFocusNode: emailFocusNode),
                SizedBox(height: 20.0),
                PasswordInputWidget(passwordFocusNode: passwordFocusNode),
                SizedBox(height: 20.0),
                LoginButtonWidget(formKey: _formKey),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
