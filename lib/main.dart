import 'package:bloc_clean_architecture/config/routes/routes.dart';
import 'package:bloc_clean_architecture/config/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'dependency_injection/locator.dart';

ServiceLocator dependencyInjector = ServiceLocator();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  dependencyInjector.serviceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RoutesName.splashScreen,
      onGenerateRoute: Routes.generateRoute,
      locale: Locale('es'),
      localizationsDelegates: [
        AppLocalizations.delegate, 
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('es'), // Spanish
      ],
    );
  }
}
