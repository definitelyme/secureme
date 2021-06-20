import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:secureme/utils/utils.dart';
import 'package:secureme/widgets/widgets.dart';

class AdaptiveToolbar {
  final Key? key;
  final String title;
  final Widget headline;
  final Widget? leadingIcon;
  final TextStyle? titleStyle;
  final bool centerTitle;
  final bool implyLeading;
  final bool? showCustomLeading;
  final VoidCallback? leadingAction;
  final double elevation;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? height;
  final Color? backgroundColor;
  final Color? buttonColor;
  final List<Widget> actions;
  // Cupertino
  final bool cupertinoImplyLeading;
  final bool implyMiddle;
  final String cupertinoLeading;
  final TextStyle? cupertinoLeadingStyle;
  final String? previousPageTitle;
  final Brightness? brightness;
  final EdgeInsetsDirectional? padding;
  final bool transitionBetweenRoutes;

  const AdaptiveToolbar({
    this.key,
    this.title = '',
    this.headline = const SizedBox.shrink(),
    this.leadingIcon,
    this.titleStyle,
    this.centerTitle = true,
    this.implyLeading = true,
    this.showCustomLeading,
    this.leadingAction,
    this.elevation = 0.0,
    this.fontSize,
    this.fontWeight,
    this.height,
    this.backgroundColor,
    this.buttonColor,
    this.actions = const [],
    this.cupertinoImplyLeading = true,
    this.implyMiddle = false,
    this.cupertinoLeading = 'Close',
    this.cupertinoLeadingStyle,
    this.padding,
    this.previousPageTitle,
    this.brightness,
    this.transitionBetweenRoutes = true,
  });

  Toolbar get toolbar => Toolbar(
        key: key,
        title: title,
        headline: headline,
        leadingIcon: leadingIcon,
        titleStyle: titleStyle,
        centerTitle: centerTitle,
        implyLeading: implyLeading,
        leadingCondition: showCustomLeading,
        leadingAction: leadingAction,
        elevation: elevation,
        fontSize: fontSize,
        height: height,
        backgroundColor: backgroundColor ?? Colors.transparent,
        buttonColor: buttonColor,
        actions: actions,
      );

  Widget get _customLeading => Tooltip(
        message: 'Go Back',
        child: GestureDetector(
          onTap: leadingAction ?? navigator.pop,
          child: AutoSizeText(
            cupertinoLeading,
            style: cupertinoLeadingStyle ??
                TextStyle(
                  color: Helpers.computeLuminance(
                    Theme.of(App.context).scaffoldBackgroundColor,
                  ),
                ),
          ),
        ),
      );

  Widget get _customMiddle => Visibility(
        visible: !title.isNullOrBlank,
        replacement: headline,
        child: AutoSizeText(
          title,
          style: !titleStyle.isNullOrBlank
              ? titleStyle
              : TextStyle(
                  fontWeight: fontWeight ?? FontWeight.w600,
                  fontSize: fontSize,
                ),
          wrapWords: false,
          softWrap: false,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      );

  ObstructingPreferredSizeWidget get cupertinoNavigationBar =>
      CupertinoNavigationBar(
        key: key,
        automaticallyImplyLeading: cupertinoImplyLeading,
        automaticallyImplyMiddle: implyMiddle,
        backgroundColor: backgroundColor,
        padding: padding,
        previousPageTitle: previousPageTitle,
        brightness: brightness,
        transitionBetweenRoutes: transitionBetweenRoutes,
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: actions,
        ),
        leading: cupertinoImplyLeading
            ? null
            : showCustomLeading ?? navigator.canPopSelfOrChildren
                ? _customLeading
                : null,
        middle: !implyMiddle ? _customMiddle : null,
      );
}
