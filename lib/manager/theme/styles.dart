import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:secureme/utils/utils.dart';
import 'package:wiredash/wiredash.dart';

part 'styles-adapter.dart';

const String LIGHT_THEME_ID = 'Light-THEME-ID';
const String DARK_THEME_ID = 'Dark-THEME-ID';

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
  final ColorScheme? _colorScheme;
  final InteractiveInkFeatureFactory? _splashFactory;
  final VisualDensity? _visualDensity;
  final TextTheme? _textTheme;
  final BottomSheetThemeData? _bottomSheetThemeData;
  final BottomNavigationBarThemeData? _bottomNavigationBarTheme;
  final ButtonThemeData? _buttonThemeData;
  final RadioThemeData? _radioThemeData;
  final SwitchThemeData? _switchThemeData;

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
    ColorScheme? colorScheme,
    InteractiveInkFeatureFactory? splashFactory,
    VisualDensity? visualDensity,
    TextTheme? textTheme,
    BottomSheetThemeData? bottomSheetThemeData,
    BottomNavigationBarThemeData? bottomNavigationBarTheme,
    ButtonThemeData? buttonThemeData,
    RadioThemeData? radioThemeData,
    SwitchThemeData? switchThemeData,
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
        _colorScheme = colorScheme,
        _splashFactory = splashFactory,
        _visualDensity = visualDensity,
        _bottomSheetThemeData = bottomSheetThemeData,
        _bottomNavigationBarTheme = bottomNavigationBarTheme,
        _buttonThemeData = buttonThemeData,
        _radioThemeData = radioThemeData,
        _switchThemeData = switchThemeData,
        _textTheme = textTheme;

  /// Light Theme Configurations
  static AppTheme light() {
    return AppTheme._(
      id: LIGHT_THEME_ID,
      brightness: Brightness.light,
      accentColorBrightness: Brightness.light,
      indicatorColor: Colors.white,
      toggleableActiveColor: Palette.secondaryColor,
      splashFactory: InkRipple.splashFactory,
      colorScheme: ColorScheme.fromSwatch(
        accentColor: Palette.accentColor,
        brightness: Brightness.light,
        primarySwatch: Palette.primaryColor,
        primaryColorDark: Palette.primaryColor.shade800,
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      inputTheme: InputDecorationTheme(
        alignLabelWithHint: true,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        isDense: true,
        filled: true,
        hintStyle: const TextStyle(color: Colors.grey),
        labelStyle: const TextStyle(color: Colors.grey),
        errorStyle: const TextStyle(color: Palette.errorRed),
        fillColor: Palette.accentColor.shade200.withOpacity(0.8),
        contentPadding: const EdgeInsets.symmetric(
          vertical: Helpers.inputVerticalPadding,
          horizontal: Helpers.inputHorizontalPadding,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(Helpers.inputBorderRadius),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: Palette.errorRed, width: 2.0),
          borderRadius: BorderRadius.circular(Helpers.inputBorderRadius),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(Helpers.inputBorderRadius),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: Palette.errorRed, width: 1.3),
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
      toggleableActiveColor: Palette.secondaryColor,
      indicatorColor: Colors.white,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      splashFactory: InkRipple.splashFactory,
      colorScheme: ColorScheme.fromSwatch(
        accentColor: Palette.accentColor,
        brightness: Brightness.dark,
        primarySwatch: Palette.secondaryColor,
        primaryColorDark: Palette.secondaryColor.shade800,
      ),
      // radioThemeData: RadioThemeData(
      //   fillColor: MaterialStateProperty.all(Colors.white70),
      // ),
      // switchThemeData: SwitchThemeData(
      //   thumbColor: MaterialStateProperty.all(AppColors.accentColor),
      //   trackColor: MaterialStateProperty.all(Colors.white70),
      // ),
      inputTheme: InputDecorationTheme(
        alignLabelWithHint: true,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        isDense: true,
        filled: true,
        hintStyle: const TextStyle(color: Colors.grey),
        labelStyle: const TextStyle(color: Colors.grey),
        errorStyle: const TextStyle(color: Palette.errorRed),
        fillColor: Palette.secondaryColor.shade500,
        contentPadding: const EdgeInsets.symmetric(
          vertical: Helpers.inputVerticalPadding,
          horizontal: Helpers.inputHorizontalPadding,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(Helpers.inputBorderRadius),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: Palette.errorRed, width: 2.0),
          borderRadius: BorderRadius.circular(Helpers.inputBorderRadius),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(Helpers.inputBorderRadius),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: Palette.errorRed, width: 1.3),
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
      // accentColorBrightness: _accentColorBrightness,
      primaryColor: _primaryColor,
      // buttonColor: _buttonColor,
      indicatorColor: _indicatorColor,
      primaryColorDark: _primaryColorDark,
      primaryColorLight: _primaryColorLight,
      toggleableActiveColor: _toggleableActiveColor,
      inputDecorationTheme: _textFieldTheme,
      colorScheme: _colorScheme,
      // accentColor: _accentColor,
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
      secondaryColor: Palette.secondaryColor,
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
    ColorScheme? colorScheme,
    InputDecorationTheme? textFieldTheme,
    InteractiveInkFeatureFactory? splashFactory,
    VisualDensity? visualDensity,
    TextTheme? textTheme,
    BottomSheetThemeData? bottomSheetThemeData,
    BottomNavigationBarThemeData? bottomNavigationBarTheme,
    ButtonThemeData? buttonThemeData,
    RadioThemeData? radioThemeData,
    SwitchThemeData? switchThemeData,
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
      colorScheme: colorScheme ?? _colorScheme,
      visualDensity: visualDensity ?? _visualDensity,
      textTheme: textTheme ?? _textTheme,
      bottomSheetThemeData: bottomSheetThemeData ?? _bottomSheetThemeData,
      bottomNavigationBarTheme:
          bottomNavigationBarTheme ?? _bottomNavigationBarTheme,
      buttonThemeData: buttonThemeData ?? _buttonThemeData,
      radioThemeData: radioThemeData ?? _radioThemeData,
      switchThemeData: switchThemeData ?? _switchThemeData,
    );
  }
}
