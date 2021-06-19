import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:secureme/widgets/widgets.dart';

/// A stateless widget to render EditProfileScreen.
class EditProfileScreen extends StatelessWidget with AutoRouteWrapper {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Profile',
        actions: [
          AppButton(
            text: 'Save',
            fontSize: 18.0,
            backgroundColor: Colors.transparent,
            borderRadius: BorderRadius.circular(100.0),
            height: kToolbarHeight * 0.5,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: EdgeInsets.zero,
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: const Text('Edit profile screen'),
        ),
      ),
    );
  }
}
