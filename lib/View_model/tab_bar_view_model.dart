import 'package:amina/Models/tap_bar_model.dart';
import 'package:flutter/foundation.dart';

class TapBarViewModel extends ChangeNotifier {
  List<TapBarModel> _tabs = [
    TapBarModel(isSelected: false),
    TapBarModel(isSelected: true),
  ];

  List<TapBarModel> get currentTapBar =>
      _tabs.where((tap) => !tap.isSelected).toList();

  List<TapBarModel> get completedOrders =>
      _tabs.where((tap) => tap.isSelected).toList();
}
