// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:secureme/_404.dart' as _i7;
import 'package:secureme/features/auth/presentation/screens/index.dart' as _i6;
import 'package:secureme/features/onborading/presentation/screens/onboarding_screen.dart'
    as _i4;
import 'package:secureme/features/onborading/presentation/screens/splash_screen.dart'
    as _i3;
import 'package:secureme/features/onborading/presentation/screens/user_option_screen.dart'
    as _i5;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.SplashScreen();
        }),
    OnboardingRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.OnboardingScreen();
        }),
    UserOptionRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.UserOptionScreen();
        }),
    LoginRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.LoginScreen();
        },
        title: 'Login'),
    SignupRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.SignupScreen();
        },
        title: 'Sign Up'),
    OtpVerificationRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<OtpVerificationRouteArgs>(
              orElse: () => const OtpVerificationRouteArgs());
          return _i6.OtpVerificationScreen(key: args.key);
        },
        title: 'Verification'),
    ForgotPasswordRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ForgotPasswordRouteArgs>(
              orElse: () => const ForgotPasswordRouteArgs());
          return _i6.ForgotPasswordScreen(key: args.key);
        },
        title: 'Forgot Password'),
    UnknownRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.UnknownScreen();
        },
        title: 'Error 404')
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/', fullMatch: true),
        _i1.RouteConfig(OnboardingRoute.name,
            path: '/onboarding-screen', fullMatch: true),
        _i1.RouteConfig(UserOptionRoute.name,
            path: '/user-option-screen', fullMatch: true),
        _i1.RouteConfig(LoginRoute.name,
            path: '/login-screen', fullMatch: true),
        _i1.RouteConfig(SignupRoute.name,
            path: '/signup-screen', fullMatch: true),
        _i1.RouteConfig(OtpVerificationRoute.name,
            path: '/otp-verification-screen', fullMatch: true),
        _i1.RouteConfig(ForgotPasswordRoute.name,
            path: '/forgot-password-screen', fullMatch: true),
        _i1.RouteConfig(UnknownRoute.name, path: '*')
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class OnboardingRoute extends _i1.PageRouteInfo {
  const OnboardingRoute() : super(name, path: '/onboarding-screen');

  static const String name = 'OnboardingRoute';
}

class UserOptionRoute extends _i1.PageRouteInfo {
  const UserOptionRoute() : super(name, path: '/user-option-screen');

  static const String name = 'UserOptionRoute';
}

class LoginRoute extends _i1.PageRouteInfo {
  const LoginRoute() : super(name, path: '/login-screen');

  static const String name = 'LoginRoute';
}

class SignupRoute extends _i1.PageRouteInfo {
  const SignupRoute() : super(name, path: '/signup-screen');

  static const String name = 'SignupRoute';
}

class OtpVerificationRoute extends _i1.PageRouteInfo<OtpVerificationRouteArgs> {
  OtpVerificationRoute({_i2.Key? key})
      : super(name,
            path: '/otp-verification-screen',
            args: OtpVerificationRouteArgs(key: key));

  static const String name = 'OtpVerificationRoute';
}

class OtpVerificationRouteArgs {
  const OtpVerificationRouteArgs({this.key});

  final _i2.Key? key;
}

class ForgotPasswordRoute extends _i1.PageRouteInfo<ForgotPasswordRouteArgs> {
  ForgotPasswordRoute({_i2.Key? key})
      : super(name,
            path: '/forgot-password-screen',
            args: ForgotPasswordRouteArgs(key: key));

  static const String name = 'ForgotPasswordRoute';
}

class ForgotPasswordRouteArgs {
  const ForgotPasswordRouteArgs({this.key});

  final _i2.Key? key;
}

class UnknownRoute extends _i1.PageRouteInfo {
  const UnknownRoute() : super(name, path: '*');

  static const String name = 'UnknownRoute';
}
