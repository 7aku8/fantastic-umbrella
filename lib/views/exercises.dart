import 'package:flutter/material.dart';
import 'package:gym_tracker/components/bottom_navigation.dart';

class Exercises extends StatefulWidget {
  const Exercises({Key? key}): super(key: key);

  @override
  State<Exercises> createState() => _ExercisesState();
}

class _ExercisesState extends State<Exercises> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext build) {
    return Scaffold(
      body: const Text('Exercises'),
      // drawer: const GymTrackerDrawer(),
      appBar: AppBar(title: const Text('Gym Tracker Exercises')),
      bottomNavigationBar: const GymTrackerBottomNavigation(),
    );
  }
}