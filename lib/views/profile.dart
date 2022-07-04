import 'package:flutter/material.dart';
import 'package:gym_tracker/components/bottom_navigation.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}): super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext build) {
    return Scaffold(
      body: const Text('Profile'),
      // drawer: const GymTrackerDrawer(),
      appBar: AppBar(title: const Text('Gym Tracker Profile')),
      bottomNavigationBar: const GymTrackerBottomNavigation(),
    );
  }
}