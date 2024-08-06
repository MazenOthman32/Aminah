import 'package:amina/View/Tameneni/tameneni_main_view.dart';
import 'package:flutter/material.dart';

import '../View/home/home__view.dart';
import '../View/home/Talabaty/info_view.dart';
import '../View/Wallet/my_wallet_view.dart';
import '../View/home/Order/BabySitter_Order/babysitter_request_form_view.dart';
import '../View/home/Profile/profie_view.dart';
import '../View/home/ttest.dart';

class BottomNavBarViewModel extends ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void onItemTapped(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  List<Widget> get screens => [
        HomeView(),
        InfoView(),
        TameneniMainView(),
        MySample(),
        ProfileView(),
      ];
}
