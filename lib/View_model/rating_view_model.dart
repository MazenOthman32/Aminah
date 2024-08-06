import 'package:flutter/material.dart';

class RatingViewModel extends ChangeNotifier {
  int _rating = 0;

  int get rating => _rating;

  void setRating(int rating) {
    _rating = rating;
    notifyListeners();
  }
}
