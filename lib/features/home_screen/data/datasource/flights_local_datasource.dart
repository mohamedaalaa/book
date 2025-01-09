import 'package:book/core/di/injection_container.dart';
import 'package:book/features/home_screen/domain/entity/flight.dart';
import 'package:book/features/home_screen/domain/entity/search_params.dart';
import 'package:book/features/home_screen/presentation/bloc/cubit/flight_cubit.dart';

abstract class FlightLocaleDataSource {
  Future<List<Flight>?> searchFlights();
}

class FlightLocaleDataSourceImpl extends FlightLocaleDataSource {
  @override
  Future<List<Flight>?> searchFlights() async {
    List<Flight>? filteredFilghts = getFilghts(sl<FlightCubit>().state.params!);
    return filteredFilghts;
  }
}

List<Flight>? getFilghts(SearchParams params) {
  List<Flight>? flights = [];

  for (int i = 0; i < sl<FlightCubit>().state.flights!.length; i++) {
    if (sl<FlightCubit>().state.flights![i].departureTime ==
        params.destinationTime) {
      flights.add(sl<FlightCubit>().state.flights![i]);
    }
  }
  print("hna search flights $flights");
  return flights;

  // return localFlights;
}

List<Flight> localFlights = [
  Flight(
    id: '1',
    origin: 'New York',
    destination: 'London',
    departureTime: DateTime(2023, 10, 1, 8, 0),
    arrivalTime: DateTime(2023, 10, 1, 20, 0),
    rtOrigin: 'London',
    rtDestination: 'New York',
    rtDepartureTime: DateTime(2023, 10, 15, 8, 0),
    rtArrivalTime: DateTime(2023, 10, 15, 20, 0),
  ),
  Flight(
    id: '2',
    origin: 'Los Angeles',
    destination: 'Tokyo',
    departureTime: DateTime(2023, 11, 5, 10, 0),
    arrivalTime: DateTime(2023, 11, 6, 14, 0),
    rtOrigin: 'Tokyo',
    rtDestination: 'Los Angeles',
    rtDepartureTime: DateTime(2023, 11, 20, 10, 0),
    rtArrivalTime: DateTime(2023, 11, 20, 14, 0),
  ),
  Flight(
    id: '3',
    origin: 'Paris',
    destination: 'Dubai',
    departureTime: DateTime(2023, 12, 10, 9, 0),
    arrivalTime: DateTime(2023, 12, 10, 17, 0),
    rtOrigin: 'Dubai',
    rtDestination: 'Paris',
    rtDepartureTime: DateTime(2023, 12, 25, 9, 0),
    rtArrivalTime: DateTime(2023, 12, 25, 17, 0),
  ),
];
