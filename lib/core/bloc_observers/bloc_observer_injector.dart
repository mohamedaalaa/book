import '../di/injection_container.dart';
import '../usecase/usecase.dart';
import 'bloc_observer.dart';

Future<void> blocObserverInjector() async {
  sl.registerLazySingleton<AppBlocObserver>(() => AppBlocObserver());

  sl.registerLazySingleton<NoParams>(() => NoParams());
}
