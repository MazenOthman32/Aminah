import 'package:flutter/material.dart';
import '../Models/babysitter_request_model.dart';

class BabysitterRequestViewModel extends ChangeNotifier {
  BabysitterRequest request = BabysitterRequest();
  bool isSelected = false;
  int? _groupValue;
  int? get groupValue => _groupValue;

  void setNeighborhood(String value) {
    request.districtName = value;
    notifyListeners();
  }

  void setNotes(String value) {
    request.notes = value;
    notifyListeners();
  }

  void setDateFrom(DateTime date) {
    request.dateFrom = date;
    notifyListeners();
  }

  void setDateTo(DateTime date) {
    request.dateTo = date;
    notifyListeners();
  }

  void setTimeFrom(TimeOfDay time) {
    request.timeFrom = time;
    notifyListeners();
  }

  void setTimeTo(TimeOfDay time) {
    request.timeTo = time;
    notifyListeners();
  }

  void setGroupValue(int? value) {
    _groupValue = value;
    isSelected = groupValue == value;
    notifyListeners();
  }

  void submitRequest() {
    print('Request submitted: ${request.districtName}, ${request.notes}');
  }
}
