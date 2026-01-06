class AssetHelper {
  static AssetHelper? _instance;
  // Avoid self instance
  AssetHelper._();
  static AssetHelper get instance =>
    _instance ??= AssetHelper._();
    static const String weatherIcon="assets/images/weather_icon.png"; 
}