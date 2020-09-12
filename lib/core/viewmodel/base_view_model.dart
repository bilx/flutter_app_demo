import 'package:flutter/material.dart';
import 'package:flutter_app_antrebate/core/viewmodel/view_states.dart';

//base viewmodel
class BaseViewModel extends ChangeNotifier {
  ViewStates _state = ViewStates.Idle;

  ViewStates get state => _state;

  void setState(ViewStates viewState) {
    _state = viewState;
    notifyListeners();
  }
}
