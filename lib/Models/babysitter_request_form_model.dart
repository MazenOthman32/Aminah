import 'package:flutter/material.dart';

class BabysitterRequest {
  String DistrictName;
  DateTime? dateFrom;
  TimeOfDay? timeFrom;
  DateTime? dateTo;
  TimeOfDay? timeTo;
  bool isInsideHouse;
  String notes;

  BabysitterRequest({
    required this.DistrictName,
    this.dateFrom,
    this.timeFrom,
    this.dateTo,
    this.timeTo,
    required this.isInsideHouse,
    required this.notes,
  });
}
