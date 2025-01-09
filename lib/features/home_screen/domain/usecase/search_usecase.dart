import 'package:book/features/home_screen/domain/entity/flight.dart';
import 'package:book/features/home_screen/domain/entity/search_params.dart';
import 'package:book/features/home_screen/domain/repository/search_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';

class SearchUsecase implements UseCase<List<Flight>?, NoParams> {
  final SearchRepository searchRepository;

  SearchUsecase({required this.searchRepository});
  @override
  Future<Either<Failure, List<Flight>?>> call(NoParams params) async {
    return await searchRepository.searchFlights();
  }
}
