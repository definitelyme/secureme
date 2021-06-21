import 'package:device_preview/device_preview.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/cupertino.dart' hide Router;
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:wiredash/wiredash.dart';
import 'package:secureme/manager/locator/locator.dart';
import 'package:secureme/manager/theme/theme.dart';
import 'package:secureme/utils/utils.dart';
import 'package:secureme/widgets/widgets.dart';
import 'package:secureme/features/core/presentation/index.dart';

/// Application Router
final AppRouter _router = AppRouter();

class Secureme extends StatelessWidget {
  /// This is the entry point for Secureme App
  const Secureme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: (_) => getIt<ThemeCubit>()),
        BlocProvider<NetworkCubit>(create: (_) => getIt<NetworkCubit>()..watch),
      ],
      child: BlocBuilder<ThemeCubit, AppTheme>(
        builder: (context, app) => Portal(
          child: Wiredash(
            navigatorKey: _router.navigatorKey,
            projectId: env.kWiredashProjectId,
            secret: env.kWiredashSecret,
            theme: app.wiredashThemeData(),
            child: PlatformBuilder(
              cupertino: (context) => CupertinoApp.router(
                title: AppStrings.appName.capitalizeFirst(),
                debugShowCheckedModeBanner: false,
                theme: app.cupertinoThemeData(),
                color: Colors.deepPurpleAccent,
                locale: DevicePreview.locale(context),
                routeInformationParser: _router.defaultRouteParser(
                  includePrefixMatches: true,
                ),
                routerDelegate: _router.delegate(
                  navigatorObservers: () => <NavigatorObserver>[
                    if (env.flavor == BuildFlavor.prod)
                      FirebaseAnalyticsObserver(
                        analytics: getIt<FirebaseAnalytics>(),
                      ),
                  ],
                ),
                builder: (context, widget) => DevicePreview.appBuilder(
                  context,
                  Helpers.setup(
                    context,
                    _router,
                    ScreenUtilInit(
                      designSize: const Size(375, 812),
                      builder: () => widget!,
                    ),
                  ),
                ),
              ),
              material: (context) => MaterialApp.router(
                title: AppStrings.appName.capitalizeFirst(),
                debugShowCheckedModeBanner: false,
                theme: app.themeData(),
                darkTheme: AppTheme.dark().themeData(),
                locale: DevicePreview.locale(context),
                routeInformationParser: _router.defaultRouteParser(
                  includePrefixMatches: true,
                ),
                routerDelegate: _router.delegate(
                  navigatorObservers: () => <NavigatorObserver>[
                    if (env.flavor == BuildFlavor.prod)
                      FirebaseAnalyticsObserver(
                        analytics: getIt<FirebaseAnalytics>(),
                      ),
                  ],
                ),
                builder: (context, widget) => DevicePreview.appBuilder(
                  context,
                  Helpers.setup(
                    context,
                    _router,
                    ScreenUtilInit(
                      designSize: const Size(375, 812),
                      builder: () => widget!,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
