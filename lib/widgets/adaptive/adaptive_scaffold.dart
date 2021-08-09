import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:secureme/widgets/widgets.dart';

class AdaptiveScaffold extends StatelessWidget {
  @override
  final Key? key;
  final PreferredSizeWidget? materialAppBar;
  final AdaptiveToolbar? adaptiveToolbar;
  final ObstructingPreferredSizeWidget? cupertinoNavigationBar;
  final Widget? body;
  final FloatingActionButton? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final FloatingActionButtonAnimator? floatingActionButtonAnimator;
  final List<Widget>? persistentFooterButtons;
  final Widget? drawer;
  final void Function(bool)? onDrawerChanged;
  final Widget? endDrawer;
  final void Function(bool)? onEndDrawerChanged;
  final Widget? bottomNavigationBar;
  final Widget? bottomSheet;
  final Color? backgroundColor;
  final bool resizeToAvoidBottomInset;
  final bool extendBody;
  final bool extendBodyBehindAppBar;
  final bool primary;
  final Color? drawerScrimColor;
  final double? drawerEdgeDragWidth;
  final String? restorationId;

  const AdaptiveScaffold({
    this.key,
    this.materialAppBar,
    this.adaptiveToolbar,
    this.cupertinoNavigationBar,
    this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.floatingActionButtonAnimator,
    this.persistentFooterButtons,
    this.drawer,
    this.onDrawerChanged,
    this.endDrawer,
    this.onEndDrawerChanged,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.backgroundColor,
    this.resizeToAvoidBottomInset = true,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
    this.primary = true,
    this.drawerScrimColor,
    this.drawerEdgeDragWidth,
    this.restorationId,
  });

  @override
  Widget build(BuildContext context) {
    return PlatformBuilder(
      material: (_) => Scaffold(
        key: key,
        appBar: materialAppBar ?? adaptiveToolbar?.materialAppBar,
        backgroundColor: backgroundColor,
        body: body,
        bottomNavigationBar: bottomNavigationBar,
        bottomSheet: bottomSheet,
        drawer: drawer,
        drawerEdgeDragWidth: drawerEdgeDragWidth,
        drawerScrimColor: drawerScrimColor,
        endDrawer: endDrawer,
        floatingActionButton: floatingActionButton,
        floatingActionButtonAnimator: floatingActionButtonAnimator,
        floatingActionButtonLocation: floatingActionButtonLocation,
        extendBody: extendBody,
        extendBodyBehindAppBar: extendBodyBehindAppBar,
        primary: primary,
        onDrawerChanged: onDrawerChanged,
        onEndDrawerChanged: onEndDrawerChanged,
        persistentFooterButtons: persistentFooterButtons,
        restorationId: restorationId,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      ),
      cupertino: (_) => CupertinoPageScaffold(
        key: key,
        navigationBar:
            cupertinoNavigationBar ?? adaptiveToolbar?.cupertinoNavigationBar,
        backgroundColor: backgroundColor,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        child: body ?? const SizedBox.shrink(),
      ),
    );
  }
}
