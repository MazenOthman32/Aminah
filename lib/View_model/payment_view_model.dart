import 'package:flutter/material.dart';

class PaymentViewModel extends ChangeNotifier {
  String _selectedPaymentMethod = 'cash';
  bool isSelected = false;
  bool _hasPromoCode = false;

  String get selectedPaymentMethod => _selectedPaymentMethod;
  bool get hasPromoCode => _hasPromoCode;

  void setPaymentMethod(String method) {
    _selectedPaymentMethod = method;
    notifyListeners();
  }

  void togglePromoCode() {
    _hasPromoCode = !_hasPromoCode;
    notifyListeners();
  }
}
