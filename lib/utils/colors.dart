import 'dart:math' as math;

import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static Color fromHex(String hex) =>
      Color(int.parse(hex.substring(1, 7), radix: 16) + 0xFF000000);

  static Color get random =>
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
          .withOpacity(1.0);

  static String stringHex(
    Color color, {
    bool withAlpha = true,
    bool appendHash = false,
  }) {
    var value = color.toString().split('(0x')[1].split(')')[0];

    if (!withAlpha)
      value = value.length > 6 ? value.replaceRange(0, 2, '') : value;
    if (appendHash) value = '#$value';
    return value;
  }

  static MaterialColor material(Color color) =>
      MaterialColor(color.value, swatch(color));

  static Map<int, Color> swatch(Color color) {
    var _color = color;
    int r, g, b;

    r = _color.red;
    g = _color.green;
    b = _color.blue;

    return {
      50: Color.fromRGBO(r, g, b, .1),
      100: Color.fromRGBO(r, g, b, .2),
      200: Color.fromRGBO(r, g, b, .3),
      300: Color.fromRGBO(r, g, b, .4),
      400: Color.fromRGBO(r, g, b, .5),
      500: Color.fromRGBO(r, g, b, .6),
      600: Color.fromRGBO(r, g, b, .7),
      700: Color.fromRGBO(r, g, b, .8),
      800: Color.fromRGBO(r, g, b, .9),
      900: Color.fromRGBO(r, g, b, 1),
    };
  }

  // App Colors
  static const _primaryPrivate = 0xffE5E5E5;
  static const _primary2Private = 0xffF5F5F5;
  static const _secondaryPrivate = 0xff333333;
  static const _accentPrivate = 0xff10b2d8;

  static const MaterialColor primaryColor = MaterialColor(
    _primaryPrivate,
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFFFFFFF),
      200: Color(0xFFFFFFFF),
      300: Color(_primary2Private),
      400: Color(0xFFf2f2f2),
      500: Color(_primaryPrivate),
      600: Color(0xFFe6e6e6),
      700: Color(0xFFcccccc),
      800: Color(0xFFb3b3b3),
      900: Color(0xFF999999),
    },
  );

  static const MaterialColor secondaryColor = MaterialColor(
    _secondaryPrivate,
    <int, Color>{
      50: Color(0xFF737373),
      100: Color(0xFF666666),
      200: Color(0xFF595959),
      300: Color(0xFF4d4d4d),
      400: Color(0xFF404040),
      500: Color(_secondaryPrivate),
      600: Color(0xFF262626),
      700: Color(0xFF1a1a1a),
      800: Color(0xFF0d0d0d),
      900: Color(0xFF000000),
    },
  );

  static const MaterialColor accentColor = MaterialColor(
    _accentPrivate,
    <int, Color>{
      50: Color(0xFFd0f3fb),
      100: Color(0xFFa0e8f8),
      200: Color(0xFF71dcf4),
      300: Color(0xFF41d1f1),
      400: Color(0xFF12c5ed),
      500: Color(_secondaryPrivate),
      600: Color(0xFF0e9ebe),
      700: Color(0xFF0c8aa6),
      800: Color(0xFF0b768e),
      900: Color(0xFF096277),
    },
  );

  static const Color permissionGreen1 = Color(0xFF138750);
  static const Color permissionGreen2 = Color(0xFF177649);

  static const Color permissionGrey1 = Color(0xFFB9BABB);
  static const Color permissionGrey2 = Color(0xFF979797);
  static const Color welcomeGrey = Color(0xFF637381);

  static const Color background = Color(0xFFf8f8f8);

  static const Color lightRed = Color(0xFFff7862);

  static const Color yellow = Color(0xFFECAE12);
  static const Color fbButton = Color(0xFF425bb4);
  static const Color googleButton = Color(0xFF34bbf0);
  static const Color twitterButton = Color(0xFF00acee);
  static const Color loginButton = Color(0xFF3871b6);

  static const Color errorRed = Color(0xFFED4337);
  static const Color deepRed = Color(0xFFb3000e);
  static const Color cardColor = Color(0xFFfe4d55);

  static const Color green = Color(0xFF00C853);
  static const Color successGreen = Color(0xFF4bb543);
  static const Color buttonGrey = Color(0xFFBDBDBD);

  static const Color transparent = Colors.transparent;

  static const Color navbarGrey = Color(0xFF4F4F4F);

  static const Color assessmentBlue = Color(0xff0070e0);
  static const Color optionBlue = Color(0xff007bf4);

  static const Color infectedBg = Color(0xfffbeae5);
  static const Color iconGrey = Color(0xff455a64);
  // static const Color inputBgColor = Color(0xff455a64);
}
