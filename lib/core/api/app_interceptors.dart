import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:book/core/utils/app_strings.dart';

class AppInterceptors extends Interceptor {
  final file = File('${Directory.current.path}/log.txt');

  void appendToFile(String text) async {
    await file.writeAsString(
        "################################\n${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second} \n $text \n################################\n",
        mode: FileMode.append);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint(
        'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    // appendToFile(
    //     'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    super.onError(err, handler);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[AppStrings.contentType] = AppStrings.applicationJson;
    debugPrint('REQUEST[${options.method}] => PATH: ${options.path}');
    // appendToFile('REQUEST[${options.method}] => PATH: ${options.path}');
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint(
        'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    // appendToFile(
    //     'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path} \n ResponseText[${response.data}] ');

    super.onResponse(response, handler);
  }
}
