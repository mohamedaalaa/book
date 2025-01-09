import 'package:book/config/locale/app_localizations_setup.dart';
import 'package:book/config/routes/app_routes.dart';
import 'package:book/config/themes/app_theme.dart';
import 'package:book/core/di/injection_container.dart';
import 'package:book/features/home_screen/presentation/bloc/cubit/flight_cubit.dart';
import 'package:book/features/locale/presentation/cubit/locale_cubit.dart';
import 'package:book/features/locale/presentation/cubit/locale_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocaleCubit>(
            create: (context) => sl<LocaleCubit>()..getSavedLang()),
        BlocProvider<FlightCubit>(
            create: (context) => sl<FlightCubit>()..loadFlights()),
      ],
      child: BlocBuilder<LocaleCubit, LocaleState>(
        builder: (context, state) => MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRoutes.onGenerateRoute,

          locale: state.locale,
          supportedLocales: AppLocalizationsSetup.supportedLocales,
          localeResolutionCallback:
              AppLocalizationsSetup.localeResolutionCallback,
          localizationsDelegates: AppLocalizationsSetup.localizationsDelegates,
          theme: appTheme(),
          // home: const LoginScreen(),
        ),
      ),
    );
  }
}
