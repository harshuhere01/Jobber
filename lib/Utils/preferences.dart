import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class PreferenceUtils{
  static Future<SharedPreferences> get _instance async => _prefsInstance ??= await SharedPreferences.getInstance();
  static SharedPreferences? _prefsInstance;

  // call this method from iniState() function of mainApp().
  static Future<SharedPreferences?> init() async {
    _prefsInstance = await _instance;
    return _prefsInstance;
  }

  static String getString(String key, [String? defValue]) {
    return _prefsInstance!.getString(key) ?? defValue ?? "";
  }

  static Future<bool> setString(String key, String value) async {
    var prefs = await _instance;
    return prefs.setString(key, value);
  }
  static Future<bool?>? putObject(String key, Object value) async {
    var prefs = await _instance;

    if (prefs == null) return null;
    return prefs.setString(key, json.encode(value));
  }

  static Map<String, dynamic> getObject(String key) async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? _data = pref.getString(key);
    return (_data == null || _data.isEmpty) ? null :await  json.decode(_data);
  }


  ///clear
  static Future<bool>? clear() {
    if (_prefsInstance == null) return null;
    return _prefsInstance!.clear();
  }

}