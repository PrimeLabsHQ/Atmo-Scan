import "package:shared_preferences/shared_preferences.dart";
import "package:flutter/foundation.dart";

class StorageHelper {
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
}
