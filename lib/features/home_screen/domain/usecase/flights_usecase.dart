import 'package:book/features/home_screen/domain/entity/flight.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../repository/flights_repository.dart';

class FlightsUsecase implements UseCase<List<Flight>?, NoParams> {
  final FlightsRepository flightsRepository;

  FlightsUsecase({required this.flightsRepository});
  @override
  Future<Either<Failure, List<Flight>?>> call(NoParams params) async {
    return await flightsRepository.loadFlights();
  }
}
