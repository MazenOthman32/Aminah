import 'package:amina/Models/time_extend_model.dart';
import 'package:flutter/material.dart';

class TimeExtendViewModel extends ChangeNotifier {
  TimeExtensionModel _model;

  TimeExtendViewModel()
      : _model = TimeExtensionModel(hours: 1, pricePerHour: 500);

  int get hours => _model.hours;
  int get totalPrice => _model.totalPrice;

  void incrementHours() {
    _model.hours++;
    notifyListeners();
  }

  void decrementHours() {
    if (_model.hours > 1) {
      _model.hours--;
      notifyListeners();
    }
  }
}
