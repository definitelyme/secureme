import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/// A stateless widget to render SettingsScreen.
class SettingsScreen extends StatelessWidget with AutoRouteWrapper {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: const Text('Settings screen starts ASAP'),
        ),
      ),
    );
  }
}
