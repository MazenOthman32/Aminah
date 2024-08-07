import 'package:flutter/material.dart';
import '../Models/notification_model.dart';

class NotificationViewModel extends ChangeNotifier {
  List<Notifications> _notifications = [];

  List<Notifications> get notifications => _notifications;

  void fetchNotifications() {
    _notifications = [
      Notifications(
          title: 'تم تأكيد الحجز بنجاح!',
          time: _formatCurrentTime(),
          message: 'شكرًا لك لاختيارنا لتلبية احتياجاتك.'),
      Notifications(
          title: 'تم تأكيد الحجز بنجاح!',
          time: _formatCurrentTime(),
          message: 'شكرًا لك لاختيارنا لتلبية احتياجاتك.'),
    ];
    notifyListeners();
  }

  String _formatCurrentTime() {
    final now = DateTime.now();
    return '${now.hour}:${now.minute.toString().padLeft(2, '0')} م';
  }
}
