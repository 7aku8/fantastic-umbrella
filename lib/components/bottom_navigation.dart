import 'package:flutter/material.dart';

class GymTrackerBottomNavigation extends StatelessWidget {
  const GymTrackerBottomNavigation({Key? key}): super(key: key);

  int getRoute(BuildContext context) {
    String routeName = ModalRoute.of(context)!.settings.name!;

    switch (routeName) {
      case '/profile':
        return 0;
      case '/history':
        return 1;
      case '/':
      case '/workout':
        return 2;
      case '/exercises':
        return 3;
      case '/measure':
        return 4;
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.man),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'History',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.work_outline),
          label: 'Workout',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.expand_circle_down_rounded),
          label: 'Exercises',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.no_meals),
          label: 'Measure',
        ),
      ],
      currentIndex: getRoute(context),
      selectedItemColor: Colors.amber[800],
      unselectedItemColor: Colors.blueAccent,
      onTap: (routeIndex) {
        final List<String> routes = ['/profile', '/history', '/', '/exercises', '/measure'];

        Navigator.pushNamed(context, routes[routeIndex]);
      },
    );
  }
}