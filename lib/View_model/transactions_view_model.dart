import 'package:amina/Models/transactions_model.dart';
import 'package:flutter/material.dart';

class TransactionViewModel extends ChangeNotifier {
  List<Transaction> _transactions = [
    Transaction.fromString(
        type: "صادرات", amount: -250, dateTime: "2023-08-01"),
    Transaction.fromString(type: "واردات", amount: 300, dateTime: "2023-04-01"),
    Transaction.fromString(type: "واردات", amount: 300, dateTime: "2023-04-01"),
    Transaction.fromString(
        type: "صادرات", amount: -250, dateTime: "2023-07-07"),
    Transaction.fromString(type: "واردات", amount: 300, dateTime: "2023-04-01"),
    Transaction.fromString(
        type: "صادرات", amount: -250, dateTime: "2023-06-01"),
    Transaction.fromString(
        type: "صادرات", amount: -250, dateTime: "2023-05-01"),
    Transaction.fromString(type: "واردات", amount: 300, dateTime: "2023-04-01"),
  ];

  String _selectedType = "الجميع";
  String _selectedDateRange = "الجميع";

  List<Transaction> get transactions {
    DateTime now = DateTime.now();
    DateTime filterDate;

    switch (_selectedDateRange) {
      case "الأسبوع الأخير":
        filterDate = now.subtract(Duration(days: 7));
        break;
      case "الشهر الأخير":
        filterDate = DateTime(now.year, now.month - 1, now.day);
        break;
      case "آخر 6 أشهر":
        filterDate = DateTime(now.year, now.month - 6, now.day);
        break;
      case "السنة الأخيرة":
        filterDate = DateTime(now.year - 1, now.month, now.day);
        break;
      default:
        filterDate = DateTime(2000);
        break;
    }

    return _transactions.where((tx) {
      bool dateCondition =
          _selectedDateRange == "الجميع" || tx.dateTime.isAfter(filterDate);
      bool typeCondition =
          _selectedType == "الجميع" || tx.type == _selectedType;
      return dateCondition && typeCondition;
    }).toList();
  }

  String get selectedType => _selectedType;
  String get selectedDateRange => _selectedDateRange;

  void selectType(String type) {
    _selectedType = type;
    notifyListeners();
  }

  void selectDateRange(String dateRange) {
    _selectedDateRange = dateRange;
    notifyListeners();
  }
}
