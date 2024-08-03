import 'package:flutter/material.dart';

class HomeNurseryRequest {
  String districtName;
  String text;
  String notes;
  DateTime? dateFrom;
  DateTime? dateTo;
  TimeOfDay? timeFrom;
  TimeOfDay? timeTo;
  int? isInsideHouse;

  HomeNurseryRequest({
    this.districtName = '',
    this.notes = '',
    this.dateFrom,
    this.dateTo,
    this.timeFrom,
    this.timeTo,
    this.isInsideHouse,
    this.text = '',
  });
}
