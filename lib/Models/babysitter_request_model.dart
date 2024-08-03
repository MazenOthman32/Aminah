import 'package:flutter/material.dart';

class BabysitterRequest {
  String districtName;
  String notes;
  DateTime? dateFrom;
  DateTime? dateTo;
  TimeOfDay? timeFrom;
  TimeOfDay? timeTo;
  int? isInsideHouse;

  BabysitterRequest({
    this.districtName = '',
    this.notes = '',
    this.dateFrom,
    this.dateTo,
    this.timeFrom,
    this.timeTo,
    this.isInsideHouse,
  });
}
