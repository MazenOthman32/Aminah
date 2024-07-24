import 'package:amina/Resources/string_resources.dart';
import 'package:flutter/material.dart';
import '../models/offer_card_model.dart';

class OfferCardViewModel with ChangeNotifier {
  final List<OfferCardModel> _offerCardData = [
    OfferCardModel(
      discountText: StringsManager.DiscountText1,
      offerDetails: StringsManager.OfferDetails1,
      buttonText: StringsManager.OrderButton1,
      offerPhoto: 'assets/Images/Png/OfferCardPhoto.png',
    ),
    OfferCardModel(
      discountText: StringsManager.DiscountText2,
      offerDetails: StringsManager.OfferDetails2,
      buttonText: StringsManager.OrderButton1,
      offerPhoto: 'assets/Images/Png/OfferCardPhoto.png',
    ),
    OfferCardModel(
      discountText: StringsManager.DiscountText3,
      offerDetails: StringsManager.OfferDetails3,
      buttonText: StringsManager.OrderButton1,
      offerPhoto: 'assets/Images/Png/OfferCardPhoto.png',
    ),
  ];

  List<OfferCardModel> get offers => _offerCardData;

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
