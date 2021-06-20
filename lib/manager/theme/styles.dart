import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:secureme/utils/utils.dart';
import 'package:wiredash/wiredash.dart';

part 'styles-adapter.dart';

const String LIGHT_THEME_ID = 'Light';
const String DARK_THEME_ID = 'Dark';

class AppTheme extends HiveObject {
  final String id;
  final Brightness? _brightness;
  final Brightness? _accentColorBrightness;
  final Color? _primaryColor;
  final Color? _buttonColor;
  final Color? _indicatorColor;
  final Color? _primaryColorDark;
  final Color? _primaryColorLight;
  final InputDecorationTheme? _textFieldTheme;
  final Color? _scaffoldBackgroundColor;
  final Color? _toggleableActiveColor;
  final Color? _accentColor;
  final Color? _splashColor;
  final InteractiveInkFeatureFactory? _splashFactory;
  final VisualDensity? _visualDensity;
  final TextTheme? _textTheme;
  final BottomSheetThemeData? _bottomSheetThemeData;
  final BottomNavigationBarThemeData? _bottomNavigationBarTheme;
  final ButtonThemeData? _buttonThemeData;

  AppTheme._({
    required this.id,
    Brightness? brightness,
    Brightness? accentColorBrightness,
    Color? primaryColor,
    Color? buttonColor,
    Color? indicatorColor,
    Color? primaryColorDark,
    Color? primaryColorLight,
    InputDecorationTheme? inputTheme,
    Color? scaffoldBackgroundColor,
    Color? toggleableActiveColor,
    Color? accentColor,
    Color? splashColor,
    InteractiveInkFeatureFactory? splashFactory,
    VisualDensity? visualDensity,
    TextTheme? textTheme,
    BottomSheetThemeData? bottomSheetThemeData,
    BottomNavigationBarThemeData? bottomNavigationBarTheme,
    ButtonThemeData? buttonThemeData,
  })  : _brightness = brightness,
        _accentColorBrightness = accentColorBrightness,
        _primaryColor = primaryColor,
        _buttonColor = buttonColor,
        _indicatorColor = indicatorColor,
        _primaryColorDark = primaryColorDark,
        _primaryColorLight = primaryColorLight,
        _toggleableActiveColor = toggleableActiveColor,
        _textFieldTheme = inputTheme,
        _scaffoldBackgroundColor = scaffoldBackgroundColor,
        _accentColor = accentColor,
        _splashColor = splashColor,
        _splashFactory = splashFactory,
        _visualDensity = visualDensity,
        _bottomSheetThemeData = bottomSheetThemeData,
        _bottomNavigationBarTheme = bottomNavigationBarTheme,
        _buttonThemeData = buttonThemeData,
        _textTheme = textTheme;

  /// Light Theme Configurations
  static AppTheme light() {
    return AppTheme._(
      id: LIGHT_THEME_ID,
      brightness: Brightness.light,
      accentColorBrightness: Brightness.dark,
      primaryColor: AppColors.primaryColor,
      primaryColorDark: AppColors.secondaryColor.shade200,
      buttonColor: AppColors.primaryColor,
      indicatorColor: Colors.white,
      toggleableActiveColor: AppColors.secondaryColor,
      accentColor: AppColors.accentColor,
      splashColor: Colors.white24,
      splashFactory: InkRipple.splashFactory,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: AppColors.primaryColor.shade300,
      inputTheme: InputDecorationTheme(
        alignLabelWithHint: true,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        isDense: true,
        filled: true,
        hintStyle: const TextStyle(color: Colors.grey),
        labelStyle: const TextStyle(color: Colors.grey),
        errorStyle: const TextStyle(color: AppColors.errorRed),
        fillColor: AppColors.accentColor.shade200.withOpacity(0.8),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 14.0,
          horizontal: 12.0,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(Helpers.inputBorderRadius),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: AppColors.errorRed, width: 2.0),
          borderRadius: BorderRadius.circular(Helpers.inputBorderRadius),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(Helpers.inputBorderRadius),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: AppColors.errorRed, width: 1.3),
          borderRadius: BorderRadius.circular(Helpers.inputBorderRadius),
        ),
      ),
      textTheme: const TextTheme()
        ..apply(
          displayColor: Colors.black87, // For headline 1 - 6
          bodyColor: Colors.black87, // For every other text style
        ),
    );
  }

  /// Dark Theme Configurations
  static AppTheme dark() {
    return AppTheme._(
      id: DARK_THEME_ID,
      brightness: Brightness.dark,
      accentColorBrightness: Brightness.dark,
      primaryColor: AppColors.secondaryColor,
      primaryColorDark: AppColors.secondaryColor.shade800,
      toggleableActiveColor: AppColors.secondaryColor,
      primaryColorLight: AppColors.secondaryColor,
      buttonColor: AppColors.primaryColor,
      indicatorColor: Colors.white,
      accentColor: AppColors.accentColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      // scaffoldBackgroundColor: AppColors.primaryColor.shade600,
      inputTheme: InputDecorationTheme(
        alignLabelWithHint: true,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        isDense: true,
        filled: true,
        hintStyle: const TextStyle(color: Colors.grey),
        labelStyle: const TextStyle(color: Colors.grey),
        errorStyle: const TextStyle(color: AppColors.errorRed),
        fillColor: AppColors.secondaryColor.shade500,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 14.0,
          horizontal: 12.0,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(Helpers.inputBorderRadius),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: AppColors.errorRed, width: 2.0),
          borderRadius: BorderRadius.circular(Helpers.inputBorderRadius),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(Helpers.inputBorderRadius),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: AppColors.errorRed, width: 1.3),
          borderRadius: BorderRadius.circular(Helpers.inputBorderRadius),
        ),
      ),
      textTheme: const TextTheme()
        ..apply(
          displayColor: Colors.white, // For headline 1 - 6
          bodyColor: Colors.white, // For every other text style
        ),
    );
  }

  ThemeData themeData() {
    return ThemeData(
      brightness: _brightness,
      accentColorBrightness: _accentColorBrightness,
      primaryColor: _primaryColor,
      buttonColor: _buttonColor,
      indicatorColor: _indicatorColor,
      primaryColorDark: _primaryColorDark,
      primaryColorLight: _primaryColorLight,
      toggleableActiveColor: _toggleableActiveColor,
      inputDecorationTheme: _textFieldTheme,
      accentColor: _accentColor,
      splashColor: _splashColor,
      splashFactory: _splashFactory,
      scaffoldBackgroundColor: _scaffoldBackgroundColor,
      visualDensity: _visualDensity,
      bottomSheetTheme: _bottomSheetThemeData,
      bottomNavigationBarTheme: _bottomNavigationBarTheme,
      buttonTheme: _buttonThemeData,
      textTheme: GoogleFonts.openSansTextTheme(_textTheme),
    );
  }

  CupertinoThemeData cupertinoThemeData() {
    return CupertinoThemeData(
      brightness: _brightness,
      primaryColor: _primaryColor,
      scaffoldBackgroundColor: _scaffoldBackgroundColor,
      // textTheme: GoogleFonts.montserratTextTheme(_textTheme),
    );
  }

  WiredashThemeData wiredashThemeData() {
    return WiredashThemeData(
      primaryColor: _primaryColor,
      backgroundColor: _scaffoldBackgroundColor,
      brightness: _brightness!,
      primaryBackgroundColor: _primaryColor,
      secondaryColor: AppColors.secondaryColor,
    );
  }

  AppTheme copyWith({
    Brightness? brightness,
    Brightness? accentColorBrightness,
    Color? primaryColor,
    Color? buttonColor,
    Color? indicatorColor,
    Color? primaryColorDark,
    Color? primaryColorLight,
    Color? toggleableActiveColor,
    Color? scaffoldBackgroundColor,
    Color? accentColor,
    Color? splashColor,
    InputDecorationTheme? textFieldTheme,
    InteractiveInkFeatureFactory? splashFactory,
    VisualDensity? visualDensity,
    TextTheme? textTheme,
    BottomSheetThemeData? bottomSheetThemeData,
    BottomNavigationBarThemeData? bottomNavigationBarTheme,
    ButtonThemeData? buttonThemeData,
  }) {
    return AppTheme._(
      id: id,
      brightness: brightness ?? _brightness,
      accentColorBrightness: accentColorBrightness ?? _accentColorBrightness,
      primaryColor: primaryColor ?? _primaryColor,
      buttonColor: buttonColor ?? _buttonColor,
      indicatorColor: indicatorColor ?? _indicatorColor,
      primaryColorDark: primaryColorDark ?? _primaryColorDark,
      primaryColorLight: primaryColorLight ?? _primaryColorLight,
      inputTheme: textFieldTheme ?? _textFieldTheme,
      scaffoldBackgroundColor:
          scaffoldBackgroundColor ?? _scaffoldBackgroundColor,
      toggleableActiveColor: toggleableActiveColor ?? _toggleableActiveColor,
      accentColor: accentColor ?? _accentColor,
      splashColor: splashColor ?? _splashColor,
      splashFactory: splashFactory ?? _splashFactory,
      visualDensity: visualDensity ?? _visualDensity,
      textTheme: textTheme ?? _textTheme,
      bottomSheetThemeData: bottomSheetThemeData ?? _bottomSheetThemeData,
      bottomNavigationBarTheme:
          bottomNavigationBarTheme ?? _bottomNavigationBarTheme,
      buttonThemeData: buttonThemeData ?? _buttonThemeData,
    );
  }
}
