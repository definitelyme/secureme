import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:secureme/utils/utils.dart';
import 'package:secureme/widgets/widgets.dart';
import 'package:secureme/utils/extensions/button_type_extension.dart';

class AppIconButton extends StatelessWidget {
  final Color backgroundColor;
  final double elevation;
  final Clip clipBehavior;
  final MaterialType type;
  final EdgeInsets? padding;
  final bool disabled;
  final Widget child;
  final String tooltip;
  final Function()? onPressed;
  final Function()? onLongPressed;

  // Cupertino
  final Color disabledColor;
  final BorderRadius? borderRadius;
  final AlignmentGeometry alignment;
  final double minSize;
  final double pressedOpacity;
  final ButtonType buttonType;

  AppIconButton({
    Key? key,
    this.backgroundColor = AppColors.accentColor,
    this.elevation = 2.0,
    this.clipBehavior = Clip.antiAlias,
    this.type = MaterialType.circle,
    this.padding,
    this.tooltip = '',
    this.borderRadius,
    this.disabled = false,
    this.onPressed,
    this.onLongPressed,
    required this.child,
    this.alignment = Alignment.center,
    this.disabledColor = CupertinoColors.quaternarySystemFill,
    this.minSize = kMinInteractiveDimensionCupertino,
    this.pressedOpacity = 0.4,
  })  : buttonType = disabled && (Platform.isIOS || Platform.isMacOS)
            ? ButtonType.elevated
            : ButtonType.flat,
        super(key: key);

  const AppIconButton.filled({
    Key? key,
    this.backgroundColor = AppColors.accentColor,
    this.elevation = 2.0,
    this.clipBehavior = Clip.antiAlias,
    this.type = MaterialType.circle,
    this.padding,
    this.tooltip = '',
    this.borderRadius,
    this.disabled = false,
    this.onPressed,
    this.onLongPressed,
    required this.child,
    this.alignment = Alignment.center,
    this.disabledColor = CupertinoColors.quaternarySystemFill,
    this.minSize = kMinInteractiveDimensionCupertino,
    this.pressedOpacity = 0.4,
  })  : buttonType = ButtonType.elevated,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: PlatformBuilder(
        cupertino: (_) => buttonType.fold(
          elevated: () => CupertinoButton.filled(
            key: key,
            alignment: alignment,
            borderRadius: borderRadius,
            pressedOpacity: pressedOpacity,
            minSize: minSize,
            disabledColor: disabledColor,
            padding: padding,
            onPressed: onPressed,
            child: Center(child: child),
          ),
          flat: () => CupertinoButton(
            key: key,
            alignment: alignment,
            borderRadius: borderRadius,
            pressedOpacity: pressedOpacity,
            // color: backgroundColor,
            minSize: minSize,
            disabledColor: disabledColor,
            padding: padding,
            onPressed: onPressed,
            child: Center(child: child),
          ),
        ),
        material: (_) => Material(
          color: backgroundColor,
          elevation: backgroundColor == Colors.transparent ? 0.0 : elevation,
          clipBehavior: clipBehavior,
          borderRadius: type == MaterialType.circle ? null : borderRadius,
          type: type,
          child: InkWell(
            onTap: onPressed,
            onLongPress: onLongPressed,
            child: Padding(
              padding: padding ??
                  EdgeInsets.all(
                    MediaQuery.of(context).size.shortestSide * 0.03,
                  ),
              child: Center(child: child),
            ),
          ),
        ),
      ),
    );
  }
}
