import 'package:flutter/material.dart';
import '../Models/otp_model.dart';
import '../Resources/assets_resources.dart';
import '../Resources/string_resources.dart';
import '../Reusable_components/bottom_sheet.dart';

class OtpViewModel with ChangeNotifier {
  OtpModel _otpModel = OtpModel();
  OtpModel get otpModel => _otpModel;

  void setOtpCode(String code) {
    _otpModel.otpCode = code;
    notifyListeners();
  }

  void showBottomSheet(BuildContext context) {
    String bottomSheetString = "";
    String bottomSheetLottie = "";
    bool entered = false;
    if (_otpModel.otpCode == '1234') {
      bottomSheetString = StringsManager.OTPVerifiedSuccessfully;
      bottomSheetLottie = AssetsResource.SuccessfulLottieInSecondaryColor;
      entered = true;
    } else {
      bottomSheetString = StringsManager.InvalidOTP;
      bottomSheetLottie = AssetsResource.InvalidLottie;
      entered = false;
    }
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return BottomSheetContent(
          buttonMessage: StringsManager.GoToHomePage,
          message: bottomSheetString,
          lottie: bottomSheetLottie,
          isSuccess: entered,
        );
      },
    );
  }
}
