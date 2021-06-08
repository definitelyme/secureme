import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:secureme/utils/utils.dart';
import 'package:secureme/widgets/widgets.dart';

class UserOptionScreen extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SecuremeLogo.horizontal(
              maxWidth: App.shortest * 0.55,
              builder: (context) => Container(
                child: AutoSizeText.rich(
                  TextSpan(children: [
                    TextSpan(
                      text: 'SECURE',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20.0,
                      ),
                    ),
                    TextSpan(
                      text: 'ME',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20.0,
                      ),
                    ),
                    TextSpan(
                      text: '\nINITIATIVE',
                      style: TextStyle(letterSpacing: 6),
                    ),
                  ]),
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontSize: 16,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ),
            ),
            //
            VerticalSpace(height: App.longest * 0.1),
            //
            AutoSizeText(
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
                      onPressed: () => navigator.pushAndPopUntil(
                        LoginRoute(),
                        predicate: (_) => false,
                      ),
                      elevation: 3.0,
                      child: Icon(
                        Theme.of(context).platform.fold(
                              cupertino: () => CupertinoIcons.person_badge_plus,
                              material: () => Icons.person_add_alt_1_outlined,
                            ),
                        color: AppColors.accentColor,
                      ),
                    ),
                    //
                    VerticalSpace(height: 10.0),
                    //
                    AutoSizeText('Civilian'),
                  ],
                ),
                //
                HorizontalSpace(width: App.shortest * 0.18),
                //
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppIconButton(
                      onPressed: () => navigator.pushAndPopUntil(
                        LoginRoute(),
                        predicate: (_) => false,
                      ),
                      elevation: 3.0,
                      child: Icon(
                        Theme.of(context).platform.fold(
                              cupertino: () => CupertinoIcons.person_badge_plus,
                              material: () => Icons.person_add_alt_1_outlined,
                            ),
                        color: AppColors.accentColor,
                      ),
                    ),
                    //
                    VerticalSpace(height: 10.0),
                    //
                    AutoSizeText('Police'),
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
