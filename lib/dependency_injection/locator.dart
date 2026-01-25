import 'dependency_injection.dart';

GetIt getIt = GetIt.instance;

class ServiceLocator {
  void serviceLocator() {
    getIt.registerLazySingleton<LoginRepository>(
      () => LoginHttpApiRepository(),
    );
    getIt.registerLazySingleton<Moviesrepository>(
      () => MoviesHttpApiRepository(),
    );
  }
}
