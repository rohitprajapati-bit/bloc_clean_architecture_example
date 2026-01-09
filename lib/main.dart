import 'package:bloc_clean_architecture/config/routes/routes.dart';
import 'package:bloc_clean_architecture/config/routes/routes_name.dart';
import 'package:bloc_clean_architecture/repository/auth/login_http_api_repository.dart';
import 'package:bloc_clean_architecture/repository/auth/login_mock_api_repository.dart';
import 'package:bloc_clean_architecture/repository/auth/login_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
void main() {
  serviceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RoutesName.splashScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

void serviceLocator() {
  getIt.registerLazySingleton<LoginRepository>(() => LoginMockApiRepository());
}
