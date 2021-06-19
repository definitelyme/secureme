import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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
    return Scaffold(
      appBar: Toolbar(
        title: 'Profile',
        actions: [
          AppButton(
            backgroundColor: Colors.transparent,
            borderRadius: BorderRadius.circular(100.0),
            width: kToolbarHeight * 0.5,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: LineIcon.pen(),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
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
                          maxRadius: App.shortest * 0.16,
                          minRadius: App.shortest * 0.1,
                          backgroundImage: const AssetImage(AppAssets.unnamed),
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
                        elevation: 3.0,
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Theme.of(context).platform.fold(
                                cupertino: () =>
                                    CupertinoIcons.camera_on_rectangle,
                                material: () => LineIcons.camera,
                              ),
                          size: 28.0,
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
                            fontSize: 16.5,
                            color: Helpers.foldTheme(
                              light: () => Colors.grey.shade600,
                              dark: () => Colors.grey.shade400,
                            ),
                          ),
                        ),
                        //
                        Text(
                          'John Doe',
                          style:
                              Theme.of(context).textTheme.headline6!.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
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
                            fontSize: 16.5,
                            color: Helpers.foldTheme(
                              light: () => Colors.grey.shade600,
                              dark: () => Colors.grey.shade400,
                            ),
                          ),
                        ),
                        //
                        Text(
                          'riddick.user',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //
            VerticalSpace(height: App.shortest * 0.07),
            //
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'E-mail Address',
                    style: TextStyle(
                      fontSize: 16.5,
                      color: Helpers.foldTheme(
                        light: () => Colors.grey.shade600,
                        dark: () => Colors.grey.shade400,
                      ),
                    ),
                  ),
                  //
                  Text(
                    'ejike.br@gmail.com',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
            //
            VerticalSpace(height: App.shortest * 0.07),
            //
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Phone',
                    style: TextStyle(
                      fontSize: 16.5,
                      color: Helpers.foldTheme(
                        light: () => Colors.grey.shade600,
                        dark: () => Colors.grey.shade400,
                      ),
                    ),
                  ),
                  //
                  Text(
                    '+234810 000 0000',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
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
