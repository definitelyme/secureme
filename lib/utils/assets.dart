import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';

mixin AppAssets {
  static const ASSETS_DIR = 'assets';
  static const SVG_DIR = '$ASSETS_DIR/svgs';
  static const IMAGES_DIR = '$ASSETS_DIR/images';
  // Sub-folders
  //////////////  IMAGES  ////////////
  static const String ONBOARDING_IMAGES_DIR = '$IMAGES_DIR/onboarding';

  /////////////  SVGS /////////////
  static const String AUTH_SVG_DIR = '$SVG_DIR/auth';
  static const String HOME_SVG_DIR = '$SVG_DIR/home';
  static const String ONBOARDING_SVG_DIR = '$SVG_DIR/onboarding';

  /////////////////////////////////////////////////////
  /////////////////////////////////////////////////////

  static const String logo = '$IMAGES_DIR/logo.png';

  static const String user = '$IMAGES_DIR/user.png';
  static const String unnamed = '$IMAGES_DIR/unnamed.png';
  static const String female = '$IMAGES_DIR/female.png';

  static const String civilian = '$ONBOARDING_SVG_DIR/civilian.svg';
  static const String officer = '$ONBOARDING_SVG_DIR/officer.svg';
  static const String getHelp = '$ONBOARDING_SVG_DIR/get_help.svg';

  /////////////////////////////////////////////////////
  ///
  static const List<String> images = [
    logo,
    user,
    unnamed,
    female,
  ];

  ///
  /////////////////////////////////////////////////////
  static SvgPicture key = SvgPicture.asset(
    '$AUTH_SVG_DIR/key_icon.svg',
    height: 22,
    width: 22,
    fit: BoxFit.contain,
  );

  static SvgPicture signUp = SvgPicture.asset(
    '$AUTH_SVG_DIR/signup_icon.svg',
    height: 22,
    width: 22,
    fit: BoxFit.contain,
  );

  static SvgPicture deviceScreen = SvgPicture.asset(
    '$AUTH_SVG_DIR/device_screen.svg',
    height: 24,
    width: 26,
    fit: BoxFit.contain,
  );

  static SvgPicture face = SvgPicture.asset(
    '$HOME_SVG_DIR/face.svg',
    height: 27,
    width: 27,
    fit: BoxFit.contain,
  );

  static SvgPicture chatBubble = SvgPicture.asset(
    '$HOME_SVG_DIR/chat_bubble.svg',
    height: 22,
    width: 22,
    fit: BoxFit.contain,
  );

  static SvgPicture google = SvgPicture.asset(
    '$AUTH_SVG_DIR/google.svg',
    height: 22,
    width: 22,
    fit: BoxFit.contain,
  );

  static SvgPicture facebook = SvgPicture.asset(
    '$AUTH_SVG_DIR/facebook.svg',
    height: 22,
    width: 22,
    fit: BoxFit.contain,
  );
}
