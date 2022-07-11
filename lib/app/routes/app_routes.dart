import 'package:flutter/material.dart';
import 'package:gym_tracker/screens/workout.dart';

import '../../screens/home.dart';

class AppRoutes {
  static const String workoutRoute = '/workout';
  static const String workoutTemplateRoute = '/workout-template';

  static Route? generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case workoutRoute: {
        return MaterialPageRoute(builder: (_) => const WorkoutScreen());
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