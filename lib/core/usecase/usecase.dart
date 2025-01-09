import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../error/failures.dart';

abstract class UseCase<ResponseType, RequestType> {
  Future<Either<Failure, ResponseType>> call(RequestType params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}

class Params<T, R> extends Equatable {
  final T? param1;
  final R? param2;

  const Params({this.param1, this.param2});

  @override
  List<Object?> get props => [param1, param2];
}
