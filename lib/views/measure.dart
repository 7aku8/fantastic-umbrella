import 'package:flutter/material.dart';
import 'package:gym_tracker/components/bottom_navigation.dart';

class Measure extends StatefulWidget {
  const Measure({Key? key}): super(key: key);

  @override
  State<Measure> createState() => _MeasureState();
}

class _MeasureState extends State<Measure> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext build) {
    return Scaffold(
      body: const Text('Measure'),
      // drawer: const GymTrackerDrawer(),
      appBar: AppBar(title: const Text('Gym Tracker Measure')),
      bottomNavigationBar: const GymTrackerBottomNavigation(),
    );
  }
}