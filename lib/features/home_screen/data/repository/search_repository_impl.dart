import 'package:book/core/error/failures.dart';
import 'package:book/features/home_screen/data/datasource/flights_local_datasource.dart';
import 'package:book/features/home_screen/domain/entity/flight.dart';
import 'package:book/features/home_screen/domain/entity/search_params.dart';
import 'package:book/features/home_screen/domain/repository/flights_repository.dart';
import 'package:book/features/home_screen/domain/repository/search_repository.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/network/network_info.dart';
import '../datasource/flights_remote_datasource.dart';

class SearchRepositpryImpl extends SearchRepository {
  final NetworkInfo networkInfo;
  final FlightRemoteDataSource flightRemoteDataSource;
  final FlightLocaleDataSource flightLocaleDataSource;

  SearchRepositpryImpl({
    required this.networkInfo,
    required this.flightRemoteDataSource,
    required this.flightLocaleDataSource,
  });

  @override
  Future<Either<Failure, List<Flight>?>> searchFlights() async {
    if (await networkInfo.isConnected) {
      try {
        var response = await flightLocaleDataSource.searchFlights();

        // print("token =${response.entity!.token}");
        // await loginLocalDataSource.saveUser(
        //   response.entity!,
        //   login.password!,
        //   login.registerEmailOrPhone!,
        // );

        // await loginLocalDataSource.saveToken(response.entity!.token!);

        return Right(response);
      } on Failure catch (e) {
        return Left(ServerFailure(message: e.toString()));
      }
    } else {
      return const Left(NoInternetConnectionFailure());
    }
  }
}
