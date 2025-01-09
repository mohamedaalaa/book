import 'package:dartz/dartz.dart';
import '../../../../../core/error/failures.dart';
import '../../domain/repositories/lang_repository.dart';
import '../datasource/lang_local_data_source.dart';

class LangRepositoryImpl extends LangRepository {
  late final LangLocalDataSource langLocalDataSource;

  LangRepositoryImpl({required this.langLocalDataSource});

  @override
  Future<Either<Failure, bool>> changeLang({required String langCode}) async {
    try {
      return Right(await langLocalDataSource.changeLang(langCode: langCode));
    } on LocalFailure {
      return const Left(LocalFailure());
    }
  }

  @override
  Future<Either<Failure, String>> getSavedLang() async {
    try {
      return Right(await langLocalDataSource.getSavedLang());
    } on LocalFailure {
      return const Left(LocalFailure());
    }
  }
}
