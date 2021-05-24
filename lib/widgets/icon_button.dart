import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:secureme/utils/utils.dart';

class AppIconButton extends StatelessWidget {
  final Color backgroundColor;
  final double elevation;
  final Clip clipBehavior;
  final MaterialType type;
  final EdgeInsets? padding;
  final BorderRadiusGeometry? borderRadius;
  final Widget child;
  final String tooltip;
  final Function() onPressed;
  final Function()? onLongPressed;

  AppIconButton({
    Key? key,
    this.backgroundColor = AppColors.accentColor,
    this.elevation = 2.0,
    this.clipBehavior = Clip.antiAlias,
    this.type = MaterialType.circle,
    this.padding,
    this.tooltip = '',
    this.borderRadius,
    required this.onPressed,
    this.onLongPressed,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: Material(
        color: backgroundColor,
        elevation: elevation,
        clipBehavior: clipBehavior,
        borderRadius: borderRadius,
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
    );
  }
}
