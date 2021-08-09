import 'dart:math' as math;

import 'package:flutter/material.dart';

class Palette {
  Palette._();

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
  static const _secondaryPrivate = 0xff333333;
  static const _accentPrivate = 0xff10b2d8;
  static const _accent2Private = 0xffffde8f;

  static const MaterialColor primaryColor = MaterialColor(
    _primaryPrivate,
    <int, Color>{
      50: Color(0xFFf2f2f2),
      100: Color(0xFFefefef),
      200: Color(0xFFededed),
      300: Color(0xFFeaeaea),
      400: Color(0xFFe8e8e8),
      500: Color(_primaryPrivate),
      600: Color(0xFFcecece),
      700: Color(0xFFb7b7b7),
      800: Color(0xFFa0a0a0),
      900: Color(0xFF898989),
    },
  );

  static const MaterialColor secondaryColor = MaterialColor(
    _secondaryPrivate,
    <int, Color>{
      50: Color(0xFF999999),
      100: Color(0xFF858585),
      200: Color(0xFF707070),
      300: Color(0xFF5c5c5c),
      400: Color(0xFF474747),
      500: Color(_secondaryPrivate),
      600: Color(0xFF2e2e2e),
      700: Color(0xFF292929),
      800: Color(0xFF242424),
      900: Color(0xFF1f1f1f),
    },
  );

  static const MaterialColor accentColor = MaterialColor(
    _accentPrivate,
    <int, Color>{
      50: Color(0xFF88d9ec),
      100: Color(0xFF70d1e8),
      200: Color(0xFF58c9e4),
      300: Color(0xFF40c1e0),
      400: Color(0xFF28badc),
      500: Color(_accentPrivate),
      600: Color(0xFF0ea0c2),
      700: Color(0xFF0d8ead),
      800: Color(0xFF0b7d97),
      900: Color(0xFF0a6b82),
    },
  );

  static const MaterialColor accent2Color = MaterialColor(
    _accent2Private,
    <int, Color>{
      50: Color(0xFFffefc7),
      100: Color(0xFFffebbc),
      200: Color(0xFFffe8b1),
      300: Color(0xFFffe5a5),
      400: Color(0xFFffe19a),
      500: Color(_accent2Private),
      600: Color(0xFFe6c881),
      700: Color(0xFFccb272),
      800: Color(0xFFb39b64),
      900: Color(0xFF998556),
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
  static const Color sosRed = Color(0xFFf73648);

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
