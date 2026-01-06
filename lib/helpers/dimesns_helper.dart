class DimesnsHelper {
  static DimesnsHelper? _instance;
  // Avoid self instance
  DimesnsHelper._();
  static DimesnsHelper get instance => _instance ??= DimesnsHelper._();

  static const double defaultPadding = 10.0;
  static const double defaultRadius = 12.0;

  static const double defaultMargin = 16.0;
  static const double defaultFontSize = 14;
}
