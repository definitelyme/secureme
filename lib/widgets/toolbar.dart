import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:secureme/utils/utils.dart';

class Toolbar extends AppBar {
  final double height;

  Toolbar({
    Key? key,
    String title = '',
    Widget headline = const SizedBox(),
    Widget? leadingIcon,
    TextStyle? titleStyle,
    bool centerTitle = true,
    bool implyLeading = true,
    bool? leadingCondition,
    VoidCallback? leadingAction,
    double elevation = 0.0,
    double? fontSize,
    double? height,
    Color backgroundColor = Colors.transparent,
    Color? buttonColor,
    List<Widget> actions = const [],
  })  : height = height ?? kToolbarHeight,
        super(
          title: Visibility(
            visible: !title.isBlank,
            replacement: headline,
            child: AutoSizeText(
              title,
              style: !titleStyle.isNullOrBlank
                  ? titleStyle
                  : fontSize != null && fontSize >= 0.0
                      ? TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: fontSize,
                        )
                      : const TextStyle(fontWeight: FontWeight.w600),
              wrapWords: false,
              softWrap: false,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          automaticallyImplyLeading: implyLeading,
          centerTitle: centerTitle,
          elevation: elevation,
          backgroundColor: backgroundColor,
          actions: actions,
          leading: leadingCondition ?? navigator.canPopSelfOrChildren
              ? Tooltip(
                  message: 'Back',
                  child: IconButton(
                    icon: leadingIcon ?? Icon(Icons.keyboard_backspace_rounded),
                    onPressed: leadingAction ?? navigator.pop,
                    color: buttonColor ??
                        Helpers.computeLuminance(
                          Theme.of(App.context).scaffoldBackgroundColor,
                        ),
                  ),
                )
              : null,
        );

  @override
  Size get preferredSize => Size.fromHeight(height);
}
