import '../../../core/di/injection_container.dart';
import '../../locale/data/datasource/lang_local_data_source.dart';
import '../../locale/domain/repositories/lang_repository.dart';
import '../data/repositories/lang_repository_impl.dart';
import '../domain/usecases/change_lang.dart';
import '../domain/usecases/get_saved_lang.dart';
import '../presentation/cubit/locale_cubit.dart';

Future<void> localeInjection() async {
  sl.registerLazySingleton<LocaleCubit>(
      () => LocaleCubit(changeLangUseCase: sl(), getSavedLangUseCase: sl()));

  sl.registerLazySingleton<ChangeLangUseCase>(
      () => ChangeLangUseCase(langRepository: sl()));

  sl.registerLazySingleton<GetSavedLangUseCase>(
      () => GetSavedLangUseCase(langRepository: sl()));

  // Repository
  sl.registerLazySingleton<LangRepository>(
      () => LangRepositoryImpl(langLocalDataSource: sl()));

  // Data Sources
  sl.registerLazySingleton<LangLocalDataSource>(
      () => LangLocalDataSourceImpl(sharedPreferences: sl()));
}
