import 'package:amina/View/auth/login_otp_view.dart';
import 'package:flutter/material.dart';
import '../View/auth/register_view.dart';

class LoginViewModel with ChangeNotifier {
  void signIn(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LogInOtpView(),
      ),
    );
  }

  void signUp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RegisterView(),
      ),
    );
  }
}
