import 'package:book/app.dart';
import 'package:book/core/bloc_observers/bloc_observer.dart';
import 'package:book/core/di/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initInjection();
  Bloc.observer = sl<AppBlocObserver>();
  runApp(const App());
}
