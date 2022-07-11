import 'package:flutter/material.dart';

import '../../screens/home.dart';

class AppRoutes {
  static const String homeRoute = "/home";
  static const String workoutTemplateRoute = '/workout-template';

  static Route? generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case homeRoute: {
        return MaterialPageRoute(builder: (_) => const Text('witam panstwa serdecznie'));
      }
      case workoutTemplateRoute: {
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      }
      default: {
        return MaterialPageRoute(builder: (_) => const Text('Route not exist'));
      }
    }
  }
}