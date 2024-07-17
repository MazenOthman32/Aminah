import 'package:flutter/cupertino.dart';
import '../models/on_boarding_model.dart';

class OnBoardingViewModel extends ChangeNotifier {
  OnBoardingModel? onBoardingModel;
  bool onBoardingLoading = true;
  getOnBoarding({required BuildContext context}) async {
    onBoardingLoading = true;
    notifyListeners();
    onBoardingLoading = false;
    notifyListeners();
  }
}
