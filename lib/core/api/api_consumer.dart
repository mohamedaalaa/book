import 'package:dio/dio.dart';

abstract class ApiConsumer {
  Future<dynamic> get(String path,
      {Map<String, dynamic>? queryParameters, Options options});

  Future<dynamic> post(String path,
      {Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters,
      bool? formDataIsEnabled,
      Options options});

  Future<dynamic> put(String path,
      {Map<String, dynamic>? body, Map<String, dynamic>? queryParameters});
}
