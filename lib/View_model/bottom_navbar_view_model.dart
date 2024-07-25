import 'package:flutter/material.dart';

import '../View/home/home__view.dart';
import '../View/home/info_view.dart';
import '../View/home/my_wallet_view.dart';
import '../View/home/order_view.dart';
import '../View/home/profie_view.dart';

class BottomNavBarViewModel extends ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void onItemTapped(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  List<Widget> get screens => [
        HomeView(),
        ProfileView(),
        OrderView(),
        WalletView(),
        InfoView(),
      ];
}
