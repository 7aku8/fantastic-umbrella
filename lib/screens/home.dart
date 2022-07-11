import 'package:flutter/material.dart';
import 'package:gym_tracker/constants.dart';
import 'package:gym_tracker/screens/pages/workout_template.dart';
import 'package:ternav_icons/ternav_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final screens = const [
    WorkoutTemplatePage()
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.kDarkBlack,
      appBar: AppBar(
        title: const Text('Workout')
      ),
      body: Stack(children: [
        screens[_currentIndex],
        Align(alignment: Alignment.bottomCenter, child: _buildBottomBar())
      ],)
    );
  }

  Widget _buildBottomBar() {
    return Container(
      height: 76,
      margin: const EdgeInsets.all(12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          iconSize: 28,
          backgroundColor: AppColors.kBlack,
          selectedItemColor: AppColors.kGreen,
          selectedLabelStyle:
            const TextStyle(fontFamily: "MTRIADPRO", fontSize: 13),
          items: [
            BottomNavigationBarItem(
              icon: Icon(TernavIcons.bold.home_2),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(TernavIcons.bold.bag),
              label: 'Market',
            ),
            BottomNavigationBarItem(
              icon: Icon(TernavIcons.bold.dollar),
              label: 'Trade',
            ),
            BottomNavigationBarItem(
              icon: Icon(TernavIcons.bold.note),
              label: "Activity",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                TernavIcons.bold.wallet,
              ),
              label: "Wallet",
            )
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        )
      )
    );
  }
}