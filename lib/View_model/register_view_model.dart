import 'package:flutter/material.dart';
import '../View/auth/register_otp_view.dart';

class RegisterViewModel with ChangeNotifier {
  void sendOtp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RegisterOtpView(),
      ),
    );
  }
}
