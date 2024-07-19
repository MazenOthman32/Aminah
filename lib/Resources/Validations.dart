import 'package:easy_localization/easy_localization.dart';

class Validations {
  static String? validatePhone(String? v) {
    if (v!.isEmpty) {
      return "Phone number field is required".tr();
    } else if (v.length < 10) {
      return " Invalid Phone number".tr();
    }
    return null;
  }

  static String? validateEmail(String? value) {
    RegExp regex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return "Invalid email format".tr();
    } else {
      return null;
    }
  }

  static String? validatePassword(String? v) {
    if (v!.isEmpty) {
      return "Password field is required".tr();
    } else if (v.length < 8) {
      return "Password field must be more than 7 characters".tr();
    }
    return null;
  }

  String? validateMobile(String value) {
    if (value.length != 11) {
      return 'Mobile Number must be of 10 digit';
    } else {
      return null;
    }
  }
}
