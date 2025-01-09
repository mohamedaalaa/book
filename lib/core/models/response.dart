import 'package:equatable/equatable.dart';

class Response<T> extends Equatable {
  final bool? state;
  final String? message;
  final T? entity;

  const Response({this.state, this.message, this.entity});

  @override
  List<Object?> get props => [state, message, entity];
}
