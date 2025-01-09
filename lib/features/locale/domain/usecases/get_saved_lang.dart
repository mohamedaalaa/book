import 'package:dartz/dartz.dart';
import '../../../../../core/error/failures.dart';

import '../../../../core/usecase/usecase.dart';
import '../repositories/lang_repository.dart';

class GetSavedLangUseCase implements UseCase<String, NoParams> {
  late final LangRepository langRepository;

  GetSavedLangUseCase({required this.langRepository});

  @override
  Future<Either<Failure, String>> call(NoParams noParams) async =>
      await langRepository.getSavedLang();
}
