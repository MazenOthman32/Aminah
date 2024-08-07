import 'package:amina/Models/counter_widget_model.dart';
import 'package:flutter/material.dart';

class CounterViewModel extends ChangeNotifier {
  CounterModel _counterModel;

  CounterViewModel() : _counterModel = CounterModel(counter: 1);

  int get counter => _counterModel.counter;

  void incrementCounter() {
    _counterModel.counter++;
    notifyListeners();
  }

  void decrementCounter() {
    if (_counterModel.counter > 1) {
      _counterModel.counter--;
      notifyListeners();
    }
  }

  void updateCounter(int value) {
    if (value >= 1) {
      _counterModel.counter = value;
      notifyListeners();
    }
  }
}
