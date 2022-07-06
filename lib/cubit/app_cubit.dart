import 'package:bloc/bloc.dart';
import 'package:gym_tracker/services/data_service.dart';

import 'app_cubit_state.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialState()) {
    emit(InitialState());
  }

  final DataServices data;

  Future<String> getData() async {
    return 'Witam witam';
  }
}