import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:secureme/widgets/widgets.dart';
import 'package:secureme/utils/utils.dart';
import 'package:secureme/utils/extensions/button_type_extension.dart';

class AppButton extends StatelessWidget {
  final String? text;
  final Widget? child;
  final double fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final double? wordSpacing;
  final Alignment textAlignment;
  final Color? textColor;
  final double? width;
  final double height;
  //
  final bool autofocus;
  final bool disabled;
  final double opacity;
  final Clip clipBehavior;
  final Function()? onLongPress;
  final VoidCallback? onPressed;
  //
  final Color? backgroundColor;
  final Color? splashColor;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final BorderRadius borderRadius;
  final OutlinedBorder? shape;
  final BorderSide? side;
  final MaterialTapTargetSize? tapTargetSize;
  final TextStyle? textStyle;

  // Cupertino
  final Color disabledColor;
  final AlignmentGeometry alignment;
  final double minSize;
  final double pressedOpacity;
  final ButtonType type;

  AppButton({
    Key? key,
    this.text,
    this.fontSize = 16.0,
    this.fontWeight,
    this.fontFamily,
    this.wordSpacing,
    this.textAlignment = Alignment.center,
    this.alignment = Alignment.center,
    this.textColor,
    this.width,
    this.height = 48.0,
    this.autofocus = false,
    this.disabled = false,
    double? opacity,
    this.clipBehavior = Clip.antiAlias,
    this.onLongPress,
    this.backgroundColor,
    this.splashColor,
    this.elevation,
    this.padding,
    BorderRadius? borderRadius,
    this.shape,
    this.side,
    this.tapTargetSize,
    this.textStyle,
    this.child,
    Color? disabledColor,
    this.minSize = kMinInteractiveDimensionCupertino,
    this.pressedOpacity = 0.4,
    this.onPressed,
  })  : assert(text != null || child != null),
        // height = App.shortest * 0.1,
        type = disabled && (Platform.isIOS || Platform.isMacOS)
            ? ButtonType.elevated
            : ButtonType.flat,
        opacity = disabled ? 0.6 : opacity ?? 1.0,
        borderRadius =
            borderRadius ?? BorderRadius.circular(Helpers.buttonRadius),
        disabledColor = disabled
            ? CupertinoColors.inactiveGray
            : CupertinoColors.quaternarySystemFill,
        super(key: key);

  AppButton.filled({
    Key? key,
    this.text,
    this.fontSize = 16.0,
    this.fontWeight,
    this.fontFamily,
    this.wordSpacing,
    this.textAlignment = Alignment.center,
    this.alignment = Alignment.center,
    this.textColor,
    this.width,
    this.height = 48.0,
    this.autofocus = false,
    this.disabled = false,
    double? opacity,
    this.clipBehavior = Clip.antiAlias,
    this.onLongPress,
    this.backgroundColor,
    this.splashColor,
    this.elevation,
    this.padding,
    BorderRadius? borderRadius,
    this.shape,
    this.side,
    this.tapTargetSize,
    this.textStyle,
    this.child,
    Color? disabledColor,
    this.minSize = kMinInteractiveDimensionCupertino,
    this.pressedOpacity = 0.4,
    this.onPressed,
  })  : assert(text != null || child != null),
        // height = App.shortest * 0.1,
        type = ButtonType.elevated,
        opacity = disabled ? 0.6 : opacity ?? 1.0,
        borderRadius =
            borderRadius ?? BorderRadius.circular(Helpers.buttonRadius),
        disabledColor = disabled
            ? CupertinoColors.inactiveGray
            : CupertinoColors.quaternarySystemFill,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformBuilder(
      cupertino: (context) => type.fold(
        elevated: () => CupertinoButton.filled(
          key: key,
          alignment: alignment,
          borderRadius: borderRadius,
          pressedOpacity: pressedOpacity,
          minSize: minSize,
          disabledColor: disabledColor,
          padding: padding,
          onPressed: onPressed,
          child: Visibility(
            visible: text != null && !text!.isBlank,
            replacement: child ?? const SizedBox(),
            child: AutoSizeText(
              text ?? '',
              style: textStyle ??
                  TextStyle(
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    fontFamily: fontFamily,
                    wordSpacing: wordSpacing,
                    color: textColor ?? App.theme.colorScheme.secondary,
                  ),
            ),
          ),
        ),
        flat: () => CupertinoButton(
          key: key,
          alignment: alignment,
          borderRadius: borderRadius,
          pressedOpacity: pressedOpacity,
          minSize: minSize,
          // color: backgroundColor,
          disabledColor: disabledColor,
          padding: padding,
          onPressed: onPressed,
          child: Visibility(
            visible: text != null && !text!.isBlank,
            replacement: child ?? const SizedBox(),
            child: AutoSizeText(
              text ?? '',
              style: textStyle ??
                  TextStyle(
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    fontFamily: fontFamily,
                    wordSpacing: wordSpacing,
                    color: textColor ?? App.theme.colorScheme.secondary,
                  ),
            ),
          ),
        ),
      ),
      material: (context) => type.fold(
        flat: () => TextButton(
          key: key,
          onPressed: onPressed,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          onLongPress: onLongPress,
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor ?? Palette.accentColor,
            alignment: alignment,
            elevation: elevation,
            side: side,
            splashFactory: CustomSplashFactory(splashColor: splashColor),
            padding: padding,
            shape: shape ?? RoundedRectangleBorder(borderRadius: borderRadius),
            tapTargetSize: tapTargetSize,
            textStyle: textStyle,
          ),
          child: Visibility(
            visible: text != null && !text!.isBlank,
            replacement: child ?? const SizedBox(),
            child: FractionallySizedBox(
              child: SizedBox(
                width: width,
                height: height,
                child: Align(
                  alignment: textAlignment,
                  child: AutoSizeText(
                    text ?? '',
                    style: textStyle ??
                        TextStyle(
                          fontSize: fontSize,
                          fontWeight: fontWeight,
                          fontFamily: fontFamily,
                          wordSpacing: wordSpacing,
                          color: textColor,
                        ),
                  ),
                ),
              ),
            ),
          ),
        ),
        elevated: () => ElevatedButton(
          key: key,
          onPressed: onPressed,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          onLongPress: onLongPress,
          style: ElevatedButton.styleFrom(
            primary: backgroundColor ?? Palette.accentColor,
            alignment: alignment,
            elevation: elevation,
            padding: padding,
            splashFactory: CustomSplashFactory(splashColor: splashColor),
            shape: shape ?? RoundedRectangleBorder(borderRadius: borderRadius),
            tapTargetSize: tapTargetSize,
            textStyle: textStyle,
          ),
          child: Visibility(
            visible: text != null && !text!.isBlank,
            replacement: child ?? const SizedBox(),
            child: FractionallySizedBox(
              child: SizedBox(
                width: width,
                height: height,
                child: Align(
                  alignment: textAlignment,
                  child: AutoSizeText(
                    text ?? '',
                    style: textStyle ??
                        TextStyle(
                          fontSize: fontSize,
                          fontWeight: fontWeight,
                          fontFamily: fontFamily,
                          wordSpacing: wordSpacing,
                          color: textColor,
                        ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
