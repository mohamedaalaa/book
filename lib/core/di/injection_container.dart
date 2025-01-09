import 'dart:async';
import 'package:book/features/home_screen/di/flight_injection.dart';
import 'package:book/features/locale/di/locale_injection.dart';
import 'package:get_it/get_it.dart';
import '../api/dio_injector.dart';
import '../bloc_observers/bloc_observer_injector.dart';
import '../network/network_injector.dart';
import '../sharedpref/sharedpref_injector.dart';

final sl = GetIt.instance;

Future<void> initInjection() async {
  await blocObserverInjector();
  await sharedPreferencesInjector();
  await networkInjector();
  await dioInjector();
  await localeInjection();
  await flightInjection();
}
