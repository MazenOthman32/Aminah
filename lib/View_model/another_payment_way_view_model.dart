import 'package:amina/Models/another_payment_way.dart';
import 'package:flutter/material.dart';

class AnotherPaymentWayViewModel extends ChangeNotifier {
  final cardNumberController = TextEditingController();
  final cardHolderNameController = TextEditingController();
  final expiryDateController = TextEditingController();
  final cvvController = TextEditingController();

  AnotherPaymentWay _anotherPaymentWay = AnotherPaymentWay();
  void saveCardDetails() {
    _anotherPaymentWay = AnotherPaymentWay(
      cardNumber: cardNumberController.text,
      cardHolderName: cardHolderNameController.text,
      expiryDate: expiryDateController.text,
      cvv: cvvController.text,
    );
    notifyListeners();
  }
}
