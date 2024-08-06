import 'package:flutter/material.dart';

class TimerViewModel extends ChangeNotifier {
  Duration _remainingTime = Duration(hours: 3, minutes: 45);

  Duration get remainingTime => _remainingTime;

  void updateRemainingTime(Duration newTime) {
    _remainingTime = newTime;
    notifyListeners();
  }

  String get formattedTime {
    final hours = _remainingTime.inHours;
    final minutes = _remainingTime.inMinutes.remainder(60);
    return 'متبقي $hours ساعات: $minutes دقيقة';
  }
}
