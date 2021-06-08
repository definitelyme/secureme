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
  static const String ONBOARDING_SVG_DIR = '$SVG_DIR/onboarding';

  /////////////////////////////////////////////////////
  /////////////////////////////////////////////////////

  static const String logo = '$IMAGES_DIR/logo.png';

  static const String user = '$IMAGES_DIR/user.png';

  static const String civilian = '$ONBOARDING_SVG_DIR/civilian.svg';
  static const String officer = '$ONBOARDING_SVG_DIR/officer.svg';
  static const String getHelp = '$ONBOARDING_SVG_DIR/get_help.svg';

  /////////////////////////////////////////////////////
  /////////////////////////////////////////////////////

  static SvgPicture google = SvgPicture.asset(
    '$AUTH_SVG_DIR/google.svg',
    height: 23,
    width: 23,
    fit: BoxFit.contain,
  );

  static SvgPicture facebook = SvgPicture.asset(
    '$AUTH_SVG_DIR/facebook.svg',
    height: 23,
    width: 23,
    fit: BoxFit.contain,
  );
}
