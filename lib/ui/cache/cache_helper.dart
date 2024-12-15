import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late final SharedPreferences prefs;

  static init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future<bool> saveEligibility() async {
    bool result = await prefs.setBool("onBoarding", true);
    print('Save result: $result'); // Debug log
    return result;
  }

  static bool? getEligibility() {
    return prefs.getBool("onBoarding");
  }
}
