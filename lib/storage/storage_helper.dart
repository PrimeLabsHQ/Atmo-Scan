import "dart:ffi";

import "package:shared_preferences/shared_preferences.dart";
class StorageHelper {
  late SharedPreferences _preferences;
  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }
  Future<bool> saveData(String token) {
    return _preferences.setString("user_access_token", token);
  }
  String? getData() {
    return _preferences.getString("user_access_token");
  }
  
}