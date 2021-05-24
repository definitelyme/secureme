import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secureme/utils/utils.dart';

enum _CircularProgressBarType { material, adaptive }

class CircularProgressBar extends StatelessWidget {
  static const double _kDefaultIndicatorRadius = 10.0;
  final double? height;
  final double? width;
  final Color color;
  final Color? background;
  final double? value;
  final double strokeWidth;
  final _CircularProgressBarType _type;

  /// [Cupertino] Whether the activity indicator is running its animation.
  final bool isAnimating;

  /// [Cupertino] Radius of the activity indicator.
  final double radius;

  /// [Cupertino] Force show CupertinoActivityIndicator
  final bool forceShowIOS;

  const CircularProgressBar({
    this.width,
    this.height,
    this.color = AppColors.accentColor,
    this.value,
    this.strokeWidth = 4.0,
    this.background,
    this.isAnimating = true,
    this.radius = _kDefaultIndicatorRadius,
    this.forceShowIOS = false,
  }) : _type = _CircularProgressBarType.material;

  const CircularProgressBar.adaptive({
    this.width,
    this.height,
    this.color = AppColors.accentColor,
    this.value,
    this.strokeWidth = 4.0,
    this.background,
    this.isAnimating = true,
    this.radius = _kDefaultIndicatorRadius,
    this.forceShowIOS = false,
  }) : _type = _CircularProgressBarType.adaptive;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: _progressIndicator(),
    );
  }

  Widget _progressIndicator() {
    if (_type == _CircularProgressBarType.adaptive &&
        (Platform.isIOS || forceShowIOS)) {
      return CupertinoActivityIndicator(
        animating: isAnimating,
        radius: radius,
      );
    }
    return CircularProgressIndicator(
      value: value,
      valueColor: AlwaysStoppedAnimation(color),
      backgroundColor: background,
      strokeWidth: strokeWidth,
      semanticsLabel: 'Progress Indicator',
      semanticsValue: '1% completed.',
    );
  }
}
