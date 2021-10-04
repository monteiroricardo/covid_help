import 'package:liax/app/app_constants/shared_preferences_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  static setWelcomeRead(bool status) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(SharedPreferencesConstants.kWelcomeRead, status);
  }

  static getWelcomeRead() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(SharedPreferencesConstants.kWelcomeRead) ?? false;
  }
}
