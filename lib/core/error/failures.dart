import 'package:equatable/equatable.dart';
import 'package:book/core/utils/app_strings.dart';

abstract class Failure extends Equatable implements Exception {
  final String? message;

  const Failure({required this.message});

  @override
  List<Object?> get props => [message];
}

class NoInternetConnectionFailure extends Failure {
  const NoInternetConnectionFailure()
      : super(message: AppStrings.noInternetOnMachine);
}

class UnExpectedError extends Failure {
  const UnExpectedError({String? message})
      : super(message: "${AppStrings.unExpectedProblem} $message");
}

class ServerFailure extends Failure {
  const ServerFailure({String? message})
      : super(message: message ?? AppStrings.noInternetOnServer);
}

class LocalFailure extends Failure {
  const LocalFailure({String? message}) : super(message: "$message");
}
