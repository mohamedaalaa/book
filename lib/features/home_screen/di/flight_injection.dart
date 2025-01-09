import 'package:book/core/di/injection_container.dart';
import 'package:book/features/home_screen/data/datasource/flights_local_datasource.dart';
import 'package:book/features/home_screen/data/datasource/flights_remote_datasource.dart';
import 'package:book/features/home_screen/data/repository/flights_repository_impl.dart';
import 'package:book/features/home_screen/data/repository/search_repository_impl.dart';
import 'package:book/features/home_screen/domain/repository/flights_repository.dart';
import 'package:book/features/home_screen/domain/repository/search_repository.dart';
import 'package:book/features/home_screen/domain/usecase/flights_usecase.dart';
import 'package:book/features/home_screen/domain/usecase/search_usecase.dart';
import 'package:book/features/home_screen/presentation/bloc/cubit/flight_cubit.dart';

Future<void> flightInjection() async {
  // BLo
  sl.registerLazySingleton<FlightCubit>(() => FlightCubit(
        sl(),
        sl(),
      ));

  // Use cases
  sl.registerLazySingleton<FlightsUsecase>(
      () => FlightsUsecase(flightsRepository: sl()));

  sl.registerLazySingleton<SearchUsecase>(
      () => SearchUsecase(searchRepository: sl()));

  // Repository
  sl.registerLazySingleton<FlightsRepository>(() => FlightsRepositpryImpl(
        flightRemoteDataSource: sl(),
        networkInfo: sl(),
      ));
  sl.registerLazySingleton<SearchRepository>(() => SearchRepositpryImpl(
        flightLocaleDataSource: sl(),
        networkInfo: sl(),
        flightRemoteDataSource: sl(),
      ));

  // Data Sources
  sl.registerLazySingleton<FlightRemoteDataSource>(
      () => FlightRemoteDataSourceImpl(apiConsumer: sl()));

  sl.registerLazySingleton<FlightLocaleDataSource>(
      () => FlightLocaleDataSourceImpl());
}
