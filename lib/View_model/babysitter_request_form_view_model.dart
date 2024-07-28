import 'package:flutter/material.dart';
import '../Models/babysitter_request_form_model.dart';

class BabysitterRequestViewModel extends ChangeNotifier {
  BabysitterRequest request = BabysitterRequest(
    DistrictName: '',
    isInsideHouse: true,
    notes: '',
  );

  void setNeighborhood(String neighborhood) {
    request.DistrictName = neighborhood;
    notifyListeners();
  }

  void setDateFrom(DateTime dateFrom) {
    request.dateFrom = dateFrom;
    notifyListeners();
  }

  void setTimeFrom(TimeOfDay timeFrom) {
    request.timeFrom = timeFrom;
    notifyListeners();
  }

  void setDateTo(DateTime dateTo) {
    request.dateTo = dateTo;
    notifyListeners();
  }

  void setTimeTo(TimeOfDay timeTo) {
    request.timeTo = timeTo;
    notifyListeners();
  }

  void setIsInsideHouse(bool isInsideHouse) {
    request.isInsideHouse = isInsideHouse;
    notifyListeners();
  }

  void setNotes(String notes) {
    request.notes = notes;
    notifyListeners();
  }

  void submitRequest() {
    print('Request submitted: ${request.toString()}');
  }
}
