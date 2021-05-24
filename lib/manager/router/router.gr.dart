// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:secureme/_404.dart' as _i5;
import 'package:secureme/features/onborading/presentation/screens/onboarding_screen.dart'
    as _i4;
import 'package:secureme/features/onborading/presentation/screens/splash_screen.dart'
    as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    Splash.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashScreen();
        }),
    Onboarding.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.OnboardingScreen();
        }),
    Unknown.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.UnknownScreen();
        },
        title: 'Error 404')
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(Splash.name, path: '/', fullMatch: true),
        _i1.RouteConfig(Onboarding.name,
            path: '/onboarding-screen', fullMatch: true),
        _i1.RouteConfig(Unknown.name, path: '*')
      ];
}

class Splash extends _i1.PageRouteInfo {
  const Splash() : super(name, path: '/');

  static const String name = 'Splash';
}

class Onboarding extends _i1.PageRouteInfo {
  const Onboarding() : super(name, path: '/onboarding-screen');

  static const String name = 'Onboarding';
}

class Unknown extends _i1.PageRouteInfo {
  const Unknown() : super(name, path: '*');

  static const String name = 'Unknown';
}
