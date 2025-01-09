import 'package:book/features/home_screen/domain/entity/flight.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';

abstract class FlightsRepository {
  Future<Either<Failure, List<Flight>>> loadFlights();
}
