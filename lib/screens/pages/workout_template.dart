import 'package:flutter/material.dart';
import 'package:gym_tracker/constants.dart';

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
              onPressed: () {},
              child: const Text('Start workout'),

          )
        ],
      ),
    );
  }
}
