import 'package:flutter/material.dart';
import 'package:gym_tracker/constants.dart';
import 'package:gym_tracker/screens/workout.dart';
import 'package:ternav_icons/ternav_icons.dart';

class WorkoutTemplatePage extends StatefulWidget {
  const WorkoutTemplatePage({Key? key}) : super(key: key);

  @override
  State<WorkoutTemplatePage> createState() => _WorkoutTemplatePageState();
}

class _WorkoutTemplatePageState extends State<WorkoutTemplatePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        AppColors.kGreen.withOpacity(0.4),
        AppColors.kBlack.withOpacity(0.1)
      ], stops: const [
        0.01,
        0.4
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      padding: const EdgeInsets.all(20),
      height: height,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WorkoutScreen()));
            },
            child: const Text('START AN EMPTY WORKOUT',
                style: TextStyle(fontSize: 18)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text('MY TEMPLATES',
                  style: TextStyle(color: Colors.white70)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(TernavIcons.bold.plus, color: Colors.white))
            ],
          ),
          const Text(
              'You don\'t have any templates yet. Tap the \'+\' to create your first template',
              style: TextStyle(color: Colors.white60, fontSize: 12)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Text('SAMPLE TEMPLATES',
                  style: TextStyle(color: Colors.white70)),
              Stack(
                children: <Widget>[
                  InkWell(
                    borderRadius: BorderRadius.circular(10),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
