// ignore_for_file: use_build_context_synchronously

import 'package:book/features/home_screen/presentation/screens/home_screen.dart';
import 'package:book/features/search/presentation/screens/search_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case Routes.searchScreen:
        return MaterialPageRoute(builder: (context) => const SearchScreen());

      default:
        return MaterialPageRoute(builder: (context) => const SizedBox());
    }
  }
}

class Routes {
  static const String initialRoute = '/';
  static const String searchScreen = '/ss';
}
