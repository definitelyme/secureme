import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icon.dart';
import 'package:secureme/manager/theme/theme.dart';
import 'package:secureme/utils/utils.dart';
import 'package:secureme/widgets/widgets.dart';

/// A stateless widget to render SettingsScreen.
class SettingsScreen extends StatelessWidget with AutoRouteWrapper {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: const AdaptiveToolbar(implyMiddle: true),
      body: SafeArea(
        child: Column(children: [
          ListTile(
            onTap: () {},
            dense: true,
            leading: const Icon(
              SecuremeApp.general_settings,
              size: 19.0,
            ),
            title: AutoSizeText(
              'General Settings',
              style: TextStyle(fontSize: 18.sp),
            ),
            trailing: Icon(
              Theme.of(context).platform.fold(
                    material: () => Icons.chevron_right,
                    cupertino: () => CupertinoIcons.forward,
                  ),
            ),
          ),
          //
          Divider(
            indent: 0.04.sw,
            endIndent: 0.04.sw,
            height: 2.0,
          ),
          //
          SwitchListTile.adaptive(
            value: true,
            dense: true,
            title: AutoSizeText(
              'Push Notifications',
              style: TextStyle(fontSize: 18.sp),
            ),
            secondary: LineIcon.bell(
              size: 30.0,
            ),
            subtitle: AutoSizeText(
              'On',
              style: TextStyle(
                color: Helpers.foldTheme(
                  light: () => Palette.accentColor,
                  dark: () => null,
                ),
              ),
            ),
            onChanged: (value) {},
          ),
          //
          Divider(
            indent: 0.04.sw,
            endIndent: 0.04.sw,
            height: 2.0,
          ),
          //
          SwitchListTile.adaptive(
            value: context.watch<ThemeCubit>().isDarkMode,
            dense: true,
            title: AutoSizeText(
              Helpers.foldTheme(
                light: () => 'Dark Mode',
                dark: () => 'Light Mode',
              )!,
              style: TextStyle(fontSize: 18.sp),
            ),
            secondary: Helpers.foldTheme(
              light: () => LineIcon.moon(size: 30.0),
              dark: () => LineIcon.lightbulb(size: 30.0),
            ),
            subtitle: AutoSizeText(
              Helpers.foldTheme(
                light: () => 'Off',
                dark: () => 'On',
              )!,
              style: TextStyle(
                color: Helpers.foldTheme(
                  light: () => Palette.accentColor,
                  dark: () => null,
                ),
              ),
            ),
            onChanged: (_) => context.read<ThemeCubit>().toggleTheme(),
          ),
          //
          Divider(
            indent: 0.04.sw,
            endIndent: 0.04.sw,
            height: 6.0,
          ),
          //
          ListTile(
            onTap: () {},
            dense: true,
            leading: const Icon(
              SecuremeApp.lock_icon,
              size: 22.0,
            ),
            title: AutoSizeText(
              'Extra Security',
              style: TextStyle(fontSize: 18.sp),
            ),
            trailing: Icon(
              Theme.of(context).platform.fold(
                    material: () => Icons.chevron_right,
                    cupertino: () => CupertinoIcons.forward,
                  ),
            ),
          ),
          //
          Divider(
            indent: 0.04.sw,
            endIndent: 0.04.sw,
            height: 8.0,
          ),
          //
          ListTile(
            onTap: () {},
            dense: true,
            leading: LineIcon.questionCircle(size: 30.0),
            title: AutoSizeText(
              'About Secureme',
              style: TextStyle(fontSize: 18.sp),
            ),
            trailing: Icon(
              Theme.of(context).platform.fold(
                    material: () => Icons.chevron_right,
                    cupertino: () => CupertinoIcons.forward,
                  ),
            ),
          ),
        ]),
      ),
    );
  }
}
