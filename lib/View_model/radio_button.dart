import 'package:flutter/material.dart';

class RadioButtonViewModel extends ChangeNotifier {
  int _groupValue = 0;
  String text = '';
  int get groupValue => _groupValue;

  void setGroupValue(int? value) {
    if (value != null) {
      _groupValue = value;
      notifyListeners();
    }
  }

  void setText(String newText) {
    text = newText;
    notifyListeners();
  }

  bool get isSelected => _groupValue != 0;
}
