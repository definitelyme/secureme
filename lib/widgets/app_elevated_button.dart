import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:secureme/utils/utils.dart';

class AppElevatedButton extends StatelessWidget {
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
  final Function() onPressed;
  //
  final Color? backgroundColor;
  final AlignmentGeometry? alignment;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final BorderRadius borderRadius;
  final OutlinedBorder? shape;
  final MaterialTapTargetSize? tapTargetSize;
  final TextStyle? textStyle;

  AppElevatedButton({
    Key? key,
    this.width,
    this.height = 48.0,
    this.text = '',
    this.fontSize = 16.0,
    this.textAlignment = Alignment.center,
    this.fontWeight,
    this.fontFamily,
    this.wordSpacing,
    this.textColor,
    this.autofocus = false,
    this.disabled = false,
    double? opacity,
    this.clipBehavior = Clip.none,
    this.onLongPress,
    required this.onPressed,
    this.backgroundColor = AppColors.accentColor,
    this.alignment,
    this.elevation = 1.0,
    this.padding,
    BorderRadius? borderRadius,
    OutlinedBorder? shape,
    this.tapTargetSize = MaterialTapTargetSize.shrinkWrap,
    this.textStyle,
    this.child,
  })  : assert(text != null || child != null),
        opacity = disabled ? 0.6 : 1.0,
        borderRadius = BorderRadius.circular(Helpers.buttonRadius),
        shape = RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(Helpers.buttonRadius),
          ),
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: disabled,
      child: AnimatedOpacity(
        duration: const Duration(microseconds: 800),
        opacity: opacity,
        child: ElevatedButton(
          key: key,
          onPressed: onPressed,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          onLongPress: onLongPress,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            // alignment: alignment,
            elevation: MaterialStateProperty.all(elevation),
            padding: MaterialStateProperty.all(padding),
            shape: MaterialStateProperty.all(
              shape ?? RoundedRectangleBorder(borderRadius: borderRadius),
            ),
            tapTargetSize: tapTargetSize,
            textStyle: MaterialStateProperty.all(textStyle),
          ),
          child: Visibility(
            visible: text.isNull,
            replacement: child ?? const SizedBox(),
            child: FractionallySizedBox(
              child: SizedBox(
                width: width,
                height: height,
                child: Align(
                  alignment: textAlignment,
                  child: AutoSizeText(
                    text!,
                    style: TextStyle(
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
