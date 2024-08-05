import 'package:flutter/foundation.dart';

import '../Models/round_button_model.dart';

class RoundButtonViewModel extends ChangeNotifier {
  int _selectedIndex = 0;
  final List<RoundButtonModel> _buttons = [
    RoundButtonModel(text: 'جليسة أطفال', isSelected: true),
    RoundButtonModel(text: 'حضانة', isSelected: false),
  ];

  List<RoundButtonModel> get buttons => _buttons;

  void selectIndex(int index) {
    for (int i = 0; i < _buttons.length; i++) {
      _buttons[i] = RoundButtonModel(
        text: _buttons[i].text,
        isSelected: i == index,
      );
    }
    _selectedIndex = index;
    notifyListeners();
  }
}
