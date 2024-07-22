import 'package:flutter/material.dart';
import '../View/auth/register_otp_view.dart';

class RegisterViewModel extends ChangeNotifier {
  void sendOtp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RegisterOtpView(),
      ),
    );
  }
}
