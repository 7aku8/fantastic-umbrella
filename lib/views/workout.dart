import 'package:flutter/material.dart';
import 'package:gym_tracker/components/bottom_navigation.dart';
import 'package:gym_tracker/views/profile.dart';

class Workout extends StatefulWidget {
  const Workout({Key? key}) : super(key: key);

  @override
  State<Workout> createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Text('Workouts'),
      // drawer: const GymTrackerDrawer(),
      appBar: AppBar(title: const Text('Gym Tracker Workouts')),
      bottomNavigationBar: const GymTrackerBottomNavigation(),
    );
  }
}