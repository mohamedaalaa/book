// ignore_for_file: depend_on_referenced_packages
import '../../../../core/di/injection_container.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'network_info.dart';

Future<void> networkInjector() async {
  sl.registerLazySingleton(() => InternetConnectionChecker.createInstance());

  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(sl(), sl(),  ));
}
