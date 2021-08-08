import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:secureme/utils/utils.dart';
import 'package:secureme/widgets/widgets.dart';

/// A stateless widget to render ProfileScreen.
class ProfileScreen extends StatelessWidget with AutoRouteWrapper {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: AdaptiveToolbar(
        title: 'Profile',
        actions: [
          AppIconButton(
            backgroundColor: Colors.transparent,
            tooltip: 'Edit Information',
            borderRadius: BorderRadius.circular(100.0),
            padding: Theme.of(context).platform.fold(
                  material: () => null,
                  cupertino: () => EdgeInsets.zero,
                ),
            onPressed: () => navigator.push(const EditProfileRoute()),
            child: LineIcon.userEdit(color: AppColors.accentColor),
          ),
          //
          AppIconButton(
            backgroundColor: Colors.transparent,
            tooltip: 'Settings',
            borderRadius: BorderRadius.circular(100.0),
            padding: Theme.of(context).platform.fold(
                  material: () => null,
                  cupertino: () => EdgeInsets.zero,
                ),
            onPressed: () => navigator.push(const SettingsRoute()),
            child: LineIcon.cog(color: AppColors.accentColor),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: App.appPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalSpace(height: App.shortest * 0.05),

            SafeArea(
              child: Align(
                alignment: Alignment.topCenter,
                child: Hero(
                  tag: HeroTag.kHomeUserPhoto,
                  child: Stack(
                    fit: StackFit.passthrough,
                    children: [
                      Material(
                        elevation: 4.0,
                        borderRadius: BorderRadius.circular(100.0),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            maxRadius: App.shortest * 0.15,
                            minRadius: App.shortest * 0.1,
                            backgroundImage: const AssetImage(AppAssets.female),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                      ),
                      //
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: AppIconButton(
                          onPressed: () {},
                          tooltip: 'Change photo',
                          elevation: 3.0,
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Theme.of(context).platform.fold(
                                  cupertino: () =>
                                      CupertinoIcons.camera_on_rectangle,
                                  material: () => LineIcons.camera,
                                ),
                            size: 25.0,
                            color: Theme.of(context).platform.fold(
                                  material: () => Colors.white,
                                  cupertino: () => AppColors.accentColor,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //
            VerticalSpace(height: App.shortest * 0.1),
            //
            Flexible(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Full Name',
                          style: TextStyle(
                            fontSize: 17.sp,
                            color: Helpers.foldTheme(
                              light: () => Colors.grey.shade600,
                              dark: () => Colors.grey.shade400,
                            ),
                          ),
                        ),
                        //
                        Text(
                          'John Doe',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        //
                        // const Divider(height: 0.0, thickness: 1.5),
                      ],
                    ),
                  ),
                  //
                  const Spacer(),
                  //
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Username',
                          style: TextStyle(
                            fontSize: 17.sp,
                            color: Helpers.foldTheme(
                              light: () => Colors.grey.shade600,
                              dark: () => Colors.grey.shade400,
                            ),
                          ),
                        ),
                        //
                        Text(
                          'riddick.user',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                            color: Helpers.foldTheme(
                              light: () => Colors.grey.shade600,
                              dark: () => Colors.grey.shade400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //
            Divider(
              height: App.shortest * 0.07,
              indent: 10.0,
              endIndent: 10.0,
            ),
            //
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'E-mail Address',
                    style: TextStyle(
                      fontSize: 17.sp,
                      color: Helpers.foldTheme(
                        light: () => Colors.grey.shade600,
                        dark: () => Colors.grey.shade400,
                      ),
                    ),
                  ),
                  //
                  Text(
                    'ejike.br@gmail.com',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            //
            Divider(
              height: App.shortest * 0.07,
              indent: 10.0,
              endIndent: 10.0,
            ),
            //
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Phone',
                    style: TextStyle(
                      fontSize: 17.sp,
                      color: Helpers.foldTheme(
                        light: () => Colors.grey.shade600,
                        dark: () => Colors.grey.shade400,
                      ),
                    ),
                  ),
                  //
                  Text(
                    '+234810 000 0000',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
