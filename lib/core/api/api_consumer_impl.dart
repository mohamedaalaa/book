// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:book/core/di/injection_container.dart';
import 'package:book/core/error/exceptions.dart';
import 'package:book/core/utils/app_strings.dart';
import 'api_consumer.dart';
import 'app_interceptors.dart';
import 'status_code.dart';

class ApiConsumerImpl implements ApiConsumer {
  late final Dio client;
  late final SharedPreferences sharedPreferences;

  ApiConsumerImpl({
    required this.client,
    required this.sharedPreferences,
  }) {
    (client.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
      final client = HttpClient();
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
    client.options
      // ..baseUrl = EndPoints.baseUrl
      ..responseType = ResponseType.plain
      ..connectTimeout = const Duration(milliseconds: 30000)
      ..receiveTimeout = const Duration(milliseconds: 30000)
      ..sendTimeout = const Duration(milliseconds: 30000)
      ..followRedirects = false
      // ..headers = {"Lang": sharedPreferences.getString(AppStrings.locale)}
      ..validateStatus = (status) {
        return status! < StatusCode.internalServerError;
      };

    client.interceptors.add(sl<AppInterceptors>());
    if (kDebugMode) {
      client.interceptors.add(sl<LogInterceptor>());
    }
  }

  @override
  Future get(String path,
      {Map<String, dynamic>? queryParameters, Options? options}) async {
    try {
      final response = await client.get(
        path,
        queryParameters: queryParameters,
        options: options != null
            ? options.copyWith(headers: {
                "Lang": sharedPreferences.getString(AppStrings.locale)
              })
            : Options(headers: {
                "Lang": sharedPreferences.getString(AppStrings.locale)
              }),
      );
      return _handleResponseAsJson(response);
      // return response;
    } on DioException catch (error) {
      return _handleDioError(error);
    }
  }

  @override
  Future post(
    String path, {
    Map<String, dynamic>? body,
    bool? formDataIsEnabled = false,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await client.post(path,
          data: body != null
              ? formDataIsEnabled!
                  ? FormData.fromMap(body)
                  : body
              : null,
          options: options != null
              ? options.copyWith(headers: {
                  "Lang": sharedPreferences.getString(AppStrings.locale)
                })
              : Options(headers: {
                  "Lang": sharedPreferences.getString(AppStrings.locale)
                }),
          queryParameters: queryParameters);
      return _handleResponseAsJson(response);
      // return response;
    } on DioException catch (error) {
      return _handleDioError(error);
    }
  }

  @override
  Future put(String path,
      {Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters}) async {
    try {
      final response =
          await client.put(path, data: body, queryParameters: queryParameters);
      return _handleResponseAsJson(response);
      // return response;
    } on DioException catch (error) {
      return _handleDioError(error);
    }
  }

  dynamic _handleResponseAsJson(Response<dynamic> response) {
    final responseJson = json.decode(response.data);
    return responseJson;
  }

  

  ServerException _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        {
          
          return const FetchDataException();
        }
      case DioExceptionType.badResponse:
        {

          switch (error.response?.statusCode) {
            case StatusCode.badRequest:
              return const BadRequestException();
            case StatusCode.unautherized:
              return const UnauthorizedException();
            case StatusCode.forbidden:
            case StatusCode.notFound:
              return const NotFoundException();
            case StatusCode.conflict:
              return const ConflictException();
            case StatusCode.internalServerError:
              return const InternalServerErrorException();
            default:
              {
                return const ServerException(message: AppStrings.UN_KNOWN);
              }
          }
        }

      case DioExceptionType.cancel:
        {
          return const CancelException();
        }
      case DioExceptionType.unknown:
        {

          return const ServerException(message: AppStrings.NoHostSpecefied);
        }
      default:
        {

          return const ServerException(message: AppStrings.NoHostSpecefied);
        }
    }
  }
}
