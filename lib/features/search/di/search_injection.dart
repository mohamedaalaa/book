// import 'package:paymentapp/features/clients/data/datasource/search_local_data_source.dart';
// import 'package:paymentapp/features/clients/data/repositories/search_repository_impl.dart';
// import 'package:paymentapp/features/search/domain/repositories/search_repository.dart';
// import 'package:paymentapp/features/clients/domain/usecases/search_clients_usecase.dart';
// import 'package:paymentapp/features/search/domain/usecase/search_products_usecase.dart';
// import 'package:paymentapp/features/search/presentation/bloc/search_bloc.dart';

// import '../../../core/di/injection_container.dart';

// Future<void> searchInjection() async {
//   // BLoc
//   sl.registerLazySingleton<SearchBloc>(() => SearchBloc(
//         sl(),
//         sl(),
//       ));

//   // Use cases
//   sl.registerLazySingleton<SearchClientUseCase>(
//       () => SearchClientUseCase(searchRepository: sl()));

//   sl.registerLazySingleton<SearchProductsUseCase>(
//       () => SearchProductsUseCase(searchRepository: sl()));

//   // Repository
//   sl.registerLazySingleton<SearchRepository>(() => SearchRepositoryImpl(
//         searchLocalDataSource: sl(),
//       ));

//   // Data Sources
//   sl.registerLazySingleton<SearchLocalDataSource>(
//       () => SearchLocalDataSourceImpl());
// }
