import 'package:equatable/equatable.dart';
import 'package:book/core/utils/app_strings.dart';

class ServerException extends Equatable implements Exception {
  final String? message;

  const ServerException({this.message});

  @override
  List<Object?> get props => [message];
}

class FetchDataException extends ServerException {
  const FetchDataException()
      : super(message: AppStrings.serverConnectionProblem);
}

class BadRequestException extends ServerException {
  const BadRequestException() : super(message: AppStrings.unknownRequest);
}

class UnauthorizedException extends ServerException {
  const UnauthorizedException() : super(message: AppStrings.unauthorized);
}

class NotFoundException extends ServerException {
  const NotFoundException() : super(message: AppStrings.noInformation);
}

class ConflictException extends ServerException {
  const ConflictException() : super(message: AppStrings.overlapping);
}

class InternalServerErrorException extends ServerException {
  const InternalServerErrorException()
      : super(message: AppStrings.internalProblem);
}

class NoInternetConnectionException extends ServerException {
  const NoInternetConnectionException()
      : super(message: AppStrings.noInternetOnMachine);
}

class CancelException extends ServerException {
  const CancelException() : super(message: AppStrings.requestCancelled);
}

class CacheException implements Exception {}
