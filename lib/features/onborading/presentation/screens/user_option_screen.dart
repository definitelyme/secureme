import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:secureme/utils/utils.dart';
import 'package:secureme/widgets/widgets.dart';

class UserOptionScreen extends StatelessWidget with AutoRouteWrapper {
  const UserOptionScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SecuremeLogo.horizontal(
              maxWidth: App.shortest * 0.52,
              // logoWidth: App.shortest * 0.13,
            ),
            //
            VerticalSpace(height: App.longest * 0.1),
            //
            const AutoSizeText(
              'Choose Option',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            //
            VerticalSpace(height: App.longest * 0.1),
            //
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppIconButton(
                      onPressed: () => navigator.push(
                        const LoginRoute(),
                      ),
                      tooltip: 'Select this if you\'re not in the force.',
                      elevation: 3.0,
                      child: Icon(
                        Theme.of(context).platform.fold(
                              cupertino: () => CupertinoIcons.person_badge_plus,
                              material: () => Icons.person_add_alt_1_outlined,
                            ),
                        color: Theme.of(context).platform.fold(
                              material: () => Colors.white,
                              cupertino: () => Palette.accentColor,
                            ),
                      ),
                    ),
                    //
                    const VerticalSpace(height: 10.0),
                    //
                    const AutoSizeText('Civilian'),
                  ],
                ),
                //
                HorizontalSpace(width: App.shortest * 0.18),
                //
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppIconButton(
                      onPressed: () => navigator.push(
                        const LoginRoute(),
                      ),
                      tooltip: 'Select this if you\'re an officer.',
                      elevation: 3.0,
                      child: Icon(
                        Theme.of(context).platform.fold(
                              cupertino: () => CupertinoIcons.lock_shield,
                              material: () => Icons.shield_outlined,
                            ),
                        color: Theme.of(context).platform.fold(
                              material: () => Colors.white,
                              cupertino: () => Palette.accentColor,
                            ),
                      ),
                    ),
                    //
                    const VerticalSpace(height: 10.0),
                    //
                    const AutoSizeText('Police'),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
