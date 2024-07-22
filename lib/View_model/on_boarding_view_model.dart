import 'package:flutter/material.dart';
import '../Models/on_boarding_model.dart';
import '../View/auth/login_view.dart';
import '../resources/assets_resources.dart';
import '../resources/string_resources.dart';

class OnBoardingViewModel with ChangeNotifier {
  final List<OnBoardingModel> onBoardingData = [
    OnBoardingModel(
      image: AssetsResource.ThirdOnBoardingSVG,
      title: StringsManager.onBoardingThirdTitle,
      description: StringsManager.onBoardingThridDescription,
    ),
    OnBoardingModel(
      image: AssetsResource.SecondOnBoardingSVG,
      title: StringsManager.onBoardingSecondTitle,
      description: StringsManager.onBoardingSecondDescription,
    ),
    OnBoardingModel(
      image: AssetsResource.FirstOnBoardingSVG,
      title: StringsManager.onBoardingFirstTitle,
      description: StringsManager.onBoardingFirstDescription,
    ),
  ];

  PageController pageController = PageController(
    initialPage: 2,
    keepPage: true,
  );

  int currentPage = 2;

  void skipMethod(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => const LoginView()),
      (Route<dynamic> route) => false,
    );
  }

  void onPageChanged(int index) {
    currentPage = index;
    notifyListeners();
  }
}
