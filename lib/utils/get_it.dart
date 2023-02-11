import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setupGetIt() {
  // App APIs
  getIt.registerSingleton<Dio>(Dio());
  // getIt.registerLazySingleton<PhotoApi>(() => PhotoApi());
}
