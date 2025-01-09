part of 'flight_cubit.dart';

enum FlightStatus { initial, loading, loaded, error }

extension FlightStateX on FlightState {
  bool get isInitial => status == FlightStatus.initial;
  bool get isLoading => status == FlightStatus.loading;
  bool get isLoaded => status == FlightStatus.loaded;
  bool get isError => status == FlightStatus.error;
}

class FlightState extends Equatable {
  const FlightState({
    this.errorMsg,
    this.flights,
    this.filteredFlights,
    this.params,
    required this.status,
  });

  final List<Flight>? flights;
  final List<Flight>? filteredFlights;
  final FlightStatus status;
  final SearchParams? params;
  final String? errorMsg;

  FlightState copyWith({
    final List<Flight>? flights,
    final FlightStatus? status,
    final SearchParams? params,
    final List<Flight>? filteredFlights,
    final String? errorMsg,
  }) {
    return FlightState(
      status: status ?? this.status,
      flights: flights ?? this.flights,
      params: params ?? this.params,
      filteredFlights: filteredFlights ?? this.filteredFlights,
      errorMsg: errorMsg ?? this.errorMsg,
    );
  }

  @override
  List<Object?> get props => [
        status,
        errorMsg,
        flights,
        filteredFlights,
      ];
}
