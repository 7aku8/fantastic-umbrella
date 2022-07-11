import 'package:flutter/material.dart';
import 'package:gym_tracker/constants.dart';

class AppNotifiers extends ChangeNotifier {
  bool _signInType = true;
  bool get signInType => _signInType;

  void changeSignUpType() {
    _signInType = !_signInType;
    notifyListeners();
  }

  bool _isVisible = true;
  bool get isVisible => _isVisible;

  get switchObsIcon {
    return _isVisible
        ? const Icon(Icons.visibility_off, color: AppColors.kGrey)
        : const Icon(Icons.visibility, color: AppColors.kGrey);
  }

  void toggleObs() {
    _isVisible = !_isVisible;
    notifyListeners();
  }
}