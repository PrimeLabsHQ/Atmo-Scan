import "package:shared_preferences/shared_preferences.dart";
import "package:flutter/foundation.dart";

class StorageHelper {
  static final StorageHelper _instance = StorageHelper._internal();
  factory StorageHelper() {
    return _instance;
  }
  StorageHelper._internal();

  late SharedPreferences _preferences;

  Future<void> init() async {
    debugPrint('StorageHelper: Initializing _preferences');
    _preferences = await SharedPreferences.getInstance();
    debugPrint('StorageHelper: _preferences initialized successfully');
  }

  Future<bool> saveData(String token) {
    return _preferences.setString("user_access_token", token);
  }
  String? getData() {
    return _preferences.getString("user_access_token");
  }
  Future<bool> saveUserlat(String token) {
    return _preferences.setString("user_access_token", token);
  }

  String? getUserLat() {
    return _preferences.getString("user_access_token");
  }
  Future<bool> saveUserlng(String token) {
    return _preferences.setString("user_access_token", token);
  }

  String? getUserlng() {
    return _preferences.getString("user_access_token");
  }
}
