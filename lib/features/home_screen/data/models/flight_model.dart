import 'package:book/features/home_screen/domain/entity/flight.dart';

class FlightModel extends Flight {
  const FlightModel({
    super.id,
    super.origin,
    super.destination,
    super.departureTime,
    super.arrivalTime,
    super.rtOrigin,
    super.rtDestination,
    super.rtDepartureTime,
    super.rtArrivalTime,
  });

  factory FlightModel.fromJson(Map<String, dynamic> json) {
    return FlightModel(
      id: json['id'],
      origin: json['origin'],
      destination: json['destination'],
      departureTime: DateTime.parse(json['departureTime']),
      arrivalTime: DateTime.parse(json['arrivalTime']),
      rtOrigin: json['rtOrigin'],
      rtDestination: json['rtDestination'],
      rtDepartureTime: DateTime.parse(json['rtDepartureTime']),
      rtArrivalTime: DateTime.parse(json['rtArrivalTime']),
    );
  }

  static List<Flight> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => FlightModel.fromJson(json)).toList();
  }
}
