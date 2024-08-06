// lib/viewmodels/order_steps_viewmodel.dart
import 'package:flutter/material.dart';

import '../Models/order_steps.dart';

class OrderStepsViewModel extends ChangeNotifier {
  List<OrderStep> _orderSteps = [
    OrderStep(
        description: 'تم تأكيد الطلب',
        dateTime: DateTime.now(),
        isCompleted: true),
    OrderStep(
        description: 'لقد وصلت الجلسة',
        dateTime: DateTime.now(),
        isCompleted: true),
    OrderStep(description: 'بداية الخدمة', isCompleted: false),
    OrderStep(description: 'نهاية الخدمة', isCompleted: false),
  ];

  List<OrderStep> get orderSteps => _orderSteps;

  void completeStep(int index) {
    if (index < _orderSteps.length) {
      _orderSteps[index].isCompleted = true;
      _orderSteps[index].dateTime = DateTime.now();
      notifyListeners();
    }
  }
}
