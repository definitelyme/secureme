import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:auto_size_text/auto_size_text.dart';

abstract class BottomAlertDialog {
  static Future<dynamic> show(
    BuildContext context, {
    required String message,
    Duration? duration,
    IconData? icon,
    Color? iconColor,
    Widget? child,
    bool shouldIconPulse = true,
    bool callbackAfterClose = false,
    Function(dynamic)? callback,
  }) async {
    ArgumentError.checkNotNull(message, 'message');

    final _bar = Flushbar(
      duration: duration ?? const Duration(seconds: 15),
      icon: Icon(
        icon ?? Icons.error,
        color: iconColor ?? Colors.red,
      ),
      messageText: child ??
          AutoSizeText(
            message,
            style: Theme.of(context).textTheme.bodyText2,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
          ),
      borderRadius: BorderRadius.circular(8.0),
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      margin: const EdgeInsets.all(8),
      flushbarPosition: MediaQuery.of(context).viewInsets.bottom == 0
          ? FlushbarPosition.BOTTOM
          : FlushbarPosition.TOP,
      shouldIconPulse: shouldIconPulse,
      backgroundColor: Theme.of(context).primaryColor,
    );

    if (_bar.isShowing()) await _bar.dismiss();

    if (callbackAfterClose) {
      return await _bar.show(context).then((_) => callback?.call(_));
    } else {
      callback?.call(null);
      return _bar.show(context);
    }
  }
}
