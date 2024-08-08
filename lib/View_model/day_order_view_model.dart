import 'package:amina/Models/day_order_model.dart';
import 'package:amina/Resources/assets_resources.dart';
import 'package:flutter/material.dart';

class DayOrderViewModel with ChangeNotifier {
  final List<DayOrderModel> _ordersData = [
    DayOrderModel(
      name: 'فرح يوسف',
      rating: 4.6,
      status: true,
      orderNumber: 22,
      orderType: 'جليسة أطفال',
      timeFrom: 5.30,
      timeTo: 8.30,
      paymentStatus: 'تم الدفع',
      paymentAmount: 500,
      imagePath: AssetsResource.FarahPng, // Change to your image path
    ),
    DayOrderModel(
      name: 'فرح يوسف',
      rating: 4.6,
      status: false,
      orderNumber: 22,
      orderType: 'جليسة أطفال',
      timeFrom: 5.30,
      timeTo: 8.30,
      paymentStatus: 'تم الدفع',
      paymentAmount: 500,
      imagePath: AssetsResource.FarahPng, // Change to your image path
    ),
    DayOrderModel(
      name: 'فرح يوسف',
      rating: 4.6,
      status: false,
      orderNumber: 22,
      orderType: 'جليسة أطفال',
      timeFrom: 5.30,
      timeTo: 8.30,
      paymentStatus: 'تم الدفع',
      paymentAmount: 500,
      imagePath: AssetsResource.FarahPng, // Change to your image path
    ),
  ];

  List<DayOrderModel> get orders => _ordersData;

  int _currentPage = 0;
  int get currentPage => _currentPage;

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  void onPageChanged(int index) {
    _currentPage = index;
    notifyListeners();
  }
}
