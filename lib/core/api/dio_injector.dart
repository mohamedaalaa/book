import "package:dio/dio.dart";
import 'package:book/core/di/injection_container.dart';

import 'api_consumer.dart';
import 'api_consumer_impl.dart';
import 'app_interceptors.dart';

Future<void> dioInjector() async {
  // Dio
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => AppInterceptors());
  sl.registerLazySingleton(
    () => LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
      error: true,
    ),
  );
  sl.registerLazySingleton<ApiConsumer>(() =>
      ApiConsumerImpl(client: sl(), sharedPreferences: sl(), ));
}
