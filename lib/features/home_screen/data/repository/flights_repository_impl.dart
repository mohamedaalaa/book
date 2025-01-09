import 'package:book/core/error/failures.dart';
import 'package:book/features/home_screen/domain/entity/flight.dart';
import 'package:book/features/home_screen/domain/repository/flights_repository.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/network/network_info.dart';
import '../datasource/flights_remote_datasource.dart';

class FlightsRepositpryImpl extends FlightsRepository {
  final NetworkInfo networkInfo;
  final FlightRemoteDataSource flightRemoteDataSource;

  FlightsRepositpryImpl({
    required this.networkInfo,
    required this.flightRemoteDataSource,
  });

  @override
  Future<Either<Failure, List<Flight>>> loadFlights() async {
    if (await networkInfo.isConnected) {
      try {
        var response = await flightRemoteDataSource.loadFlights();
        if (!response.state!) {
          return Left(ServerFailure(message: response.message));
        }

        // print("token =${response.entity!.token}");
        // await loginLocalDataSource.saveUser(
        //   response.entity!,
        //   login.password!,
        //   login.registerEmailOrPhone!,
        // );

        // await loginLocalDataSource.saveToken(response.entity!.token!);

        return Right(response.entity!);
      } on Failure catch (e) {
        return Left(ServerFailure(message: e.toString()));
      }
    } else {
      return const Left(NoInternetConnectionFailure());
    }
  }
}
