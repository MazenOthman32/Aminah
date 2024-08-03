import 'package:flutter/material.dart';

class ChildFormViewModel extends ChangeNotifier {
  String name = '';
  String photo = '';
  int age = 1;
  int? _hasHealthIssues;
  bool isMale = true;
  String notes = '';
  bool isSelected = false;

  int? get hasHealthIssues => _hasHealthIssues;

  void setName(String newName) {
    name = newName;
    notifyListeners();
  }

  void setAge(int newAge) {
    age = newAge;
    notifyListeners();
  }

  void setGroupValue(int? value) {
    _hasHealthIssues = value;
    isSelected = hasHealthIssues == value;
    notifyListeners();
  }

  void setGender(bool male) {
    isMale = male;
    notifyListeners();
  }

  void setNotes(String newNotes) {
    notes = newNotes;
    notifyListeners();
  }

  void setPhoto(String newPhoto) {
    photo = newPhoto;
    notifyListeners();
  }

  bool get isFormValid => name.isNotEmpty;
}
