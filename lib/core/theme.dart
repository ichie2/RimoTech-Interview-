import 'package:rimo/core/exports.dart';

class CustomTheme {
  static ThemeData getTheme() {
    if (true) {
      return _themeData();
    }
  }

  static ThemeData _themeData() {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: primaryColor,
      backgroundColor: whiteColor,
      typography: Typography(),
      accentColor: Colors.black,
      cursorColor: primaryColor,
      platform: TargetPlatform.iOS,
      brightness: Brightness.light,
      indicatorColor: const Color(0xfff8CF00),
      sliderTheme: const SliderThemeData(
        showValueIndicator: ShowValueIndicator.always,
        valueIndicatorColor: Colors.white,
      ),
      iconTheme: IconThemeData(color: Colors.black, size: 20.sp),
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
      }),
    );
  }
}
