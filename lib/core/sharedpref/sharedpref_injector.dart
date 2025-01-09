import 'package:shared_preferences/shared_preferences.dart';

import '../di/injection_container.dart';

Future<void> sharedPreferencesInjector() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
}
