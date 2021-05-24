import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';

mixin AppAssets {
  static const ASSETS_DIR = 'assets';
  static const SVG_DIR = '$ASSETS_DIR/svgs';
  static const IMAGES_DIR = '$ASSETS_DIR/images';
  // Sub-folders
  //////////////  IMAGES  ////////////
  static const String ONBOARDING_PROFILE_IMAGES_DIR =
      '$IMAGES_DIR/onboarding/profile';

  /////////////  SVGS /////////////
  static const String AUTH_SVG_DIR = '$SVG_DIR/auth';

  /////////////////////////////////////////////////////
  /////////////////////////////////////////////////////

  static const String logo = '$IMAGES_DIR/logo.png';

  static const String user = '$IMAGES_DIR/user.png';

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
