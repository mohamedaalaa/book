import 'package:equatable/equatable.dart';

class Flight extends Equatable {
  final String? id;
  final String? origin;
  final String? destination;
  final DateTime? departureTime;
  final DateTime? arrivalTime;
  final String? rtOrigin;
  final String? rtDestination;
  final DateTime? rtDepartureTime;
  final DateTime? rtArrivalTime;

  const Flight({
    this.id,
    this.origin,
    this.destination,
    this.departureTime,
    this.arrivalTime,
    this.rtOrigin,
    this.rtDestination,
    this.rtDepartureTime,
    this.rtArrivalTime,
  });

  @override
  List<Object?> get props => [
        id,
        origin,
        destination,
        departureTime,
        arrivalTime,
        rtOrigin,
        rtDestination,
        rtDepartureTime,
        rtArrivalTime,
      ];
}
