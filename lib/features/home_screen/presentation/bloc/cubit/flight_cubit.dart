import 'package:bloc/bloc.dart';
import 'package:book/core/di/injection_container.dart';
import 'package:book/core/usecase/usecase.dart';
import 'package:book/features/home_screen/domain/entity/flight.dart';
import 'package:book/features/home_screen/domain/entity/search_params.dart';
import 'package:book/features/home_screen/domain/usecase/flights_usecase.dart';
import 'package:book/features/home_screen/domain/usecase/search_usecase.dart';
import 'package:equatable/equatable.dart';
part 'flight_state.dart';

class FlightCubit extends Cubit<FlightState> {
  FlightCubit(this._flightsUsecase, this._searchUsecase)
      : super(FlightState(status: FlightStatus.initial));
  late final FlightsUsecase _flightsUsecase;
  late final SearchUsecase _searchUsecase;

  Future<void> loadFlights() async {
    emit(state.copyWith(status: FlightStatus.loading));
    var response = await _flightsUsecase.call(sl<NoParams>());
    response.fold(
      (l) =>
          emit(state.copyWith(status: FlightStatus.error, errorMsg: l.message)),
      (r) => emit(state.copyWith(status: FlightStatus.loaded, flights: r)),
    );
  }

  void search(SearchParams params) async {
    emit(state.copyWith(status: FlightStatus.loading, params: params));
    var response = await _searchUsecase.call(sl<NoParams>());
    response.fold(
      (l) =>
          emit(state.copyWith(status: FlightStatus.error, errorMsg: l.message)),
      (r) =>
          emit(state.copyWith(status: FlightStatus.loaded, filteredFlights: r)),
    );
  }
}
