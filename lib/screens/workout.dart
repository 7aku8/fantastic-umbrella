import 'package:flutter/material.dart';
import 'package:gym_tracker/constants.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({Key? key}) : super(key: key);

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        floatingActionButton:
            FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
        drawer: Drawer(
          backgroundColor: AppColors.kBlack,
          child:
            Padding(
              padding: EdgeInsets.symmetric(vertical: (height / 6), horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text('Workout options', style: TextStyle(color: AppColors.kGreen, fontSize: 20)),
                  const SizedBox(height: 30,),
                  ElevatedButton(onPressed: () {}, child: const Text('Add exercise', style: TextStyle(fontSize: 16))),
                  const SizedBox(height: 15,),
                  TextButton(onPressed: () {}, child: const Text('Finish workout', style: TextStyle(fontSize: 16, color: AppColors.kGrey))),
                  const SizedBox(height: 15,),
                  TextButton(onPressed: () {}, child: const Text('Cancel workout', style: TextStyle(fontSize: 16, color: AppColors.kRed))),
                ],
              ),
            )
        ),
        backgroundColor: AppColors.kDarkBlack,
        appBar: AppBar(
          title: const Text('Workout'),
          actions: <Widget>[
            TextButton(
              child: const Text('Add exericse'),
              onPressed: () {},
            )
          ],
        ));
  }
}
