import 'package:shared_preferences/shared_preferences.dart';

class CashHelper {
  static late final SharedPreferences prefs;

  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future<void> save(bool flag) async {
    await prefs.setBool('opened', flag);
  }

  static bool? get(String key) {
    return prefs.getBool(key);
  }
}
