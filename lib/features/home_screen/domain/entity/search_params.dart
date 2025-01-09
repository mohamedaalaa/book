import 'package:equatable/equatable.dart';

class SearchParams extends Equatable {
  final DateTime? destinationTime;
  final DateTime? arrivalTime;

  const SearchParams({
    this.destinationTime,
    this.arrivalTime,
  });

  @override
  List<Object?> get props => [
        arrivalTime,
        destinationTime,
      ];
}
