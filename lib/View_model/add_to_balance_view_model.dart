import 'package:amina/View_model/user_balance_view_model.dart';
import 'package:flutter/material.dart';

class AddToBalanceViewModel extends ChangeNotifier {
  UserBalanceModel _userBalanceModel =
      UserBalanceModel(availableBalance: 3725.0);

  double get availableBalance => _userBalanceModel.availableBalance;
  String get withdrawAmount => _userBalanceModel.withdrawAmount;

  void updateWithdrawAmount(String digit) {
    if (_userBalanceModel.withdrawAmount == '0') {
      _userBalanceModel.withdrawAmount = digit;
    } else {
      _userBalanceModel.withdrawAmount += digit;
    }
    notifyListeners();
  }

  void deleteLastDigit() {
    if (_userBalanceModel.withdrawAmount.isNotEmpty) {
      _userBalanceModel.withdrawAmount = _userBalanceModel.withdrawAmount
          .substring(0, _userBalanceModel.withdrawAmount.length - 1);
      if (_userBalanceModel.withdrawAmount.isEmpty) {
        _userBalanceModel.withdrawAmount = '0';
      }
      notifyListeners();
    }
  }

  void confirmWithdraw() {
    double amount = double.tryParse(_userBalanceModel.withdrawAmount) ?? 0.0;
    _userBalanceModel.availableBalance += amount;
    _userBalanceModel.withdrawAmount = '0';
    notifyListeners();
  }
}
