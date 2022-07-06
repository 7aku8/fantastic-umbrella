import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_tracker/cubit/app_cubit_state.dart';
import 'package:gym_tracker/pages/dashboard_page.dart';

import 'app_cubit.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
        if (state is InitialState) {
          return const DashboardPage();
        }

        return const Text('Nothing to find here :(');
      })
    );
  }
}