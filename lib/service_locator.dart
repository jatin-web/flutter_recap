import 'package:flutter_recap/data/repo/test_repo.dart';
import 'package:get_it/get_it.dart';

void serviceLocator() {
  GetIt.I.registerLazySingleton(() => TestRepo());
}
