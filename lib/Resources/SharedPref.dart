import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefUtils {
  static check() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    bool check = await pref.containsKey("access_token");
    return check;
  }

  static checkLanguage() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    bool check = await pref.containsKey("language");
    return check;
  }

  static setLanguage(String language) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("language", language);
  }

  static getLanguage() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("language");
  }
}
