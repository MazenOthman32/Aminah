import 'package:flutter/material.dart';

class RadioButtonViewModel extends ChangeNotifier {
  int _groupValue = 0;

  int get groupValue => _groupValue;

  void setGroupValue(int? value) {
    if (value != null) {
      _groupValue = value;
      notifyListeners();
    }
  }

  bool get isSelected => _groupValue != 0;
}
