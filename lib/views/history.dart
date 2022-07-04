import 'package:flutter/material.dart';
import 'package:gym_tracker/components/bottom_navigation.dart';

class History extends StatefulWidget {
  const History({Key? key}): super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext build) {
    return Scaffold(
      body: const Text('History'),
      // drawer: const GymTrackerDrawer(),
      appBar: AppBar(title: const Text('Gym Tracker History')),
      bottomNavigationBar: const GymTrackerBottomNavigation(),
    );
  }
}