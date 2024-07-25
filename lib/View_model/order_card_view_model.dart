import 'package:flutter/cupertino.dart';

class OrderCardViewModel extends ChangeNotifier {
  final String imagePath;
  final String buttonText;
  final VoidCallback onPressed;

  OrderCardViewModel({
    required this.imagePath,
    required this.buttonText,
    required this.onPressed,
  });
}
