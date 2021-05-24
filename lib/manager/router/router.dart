import 'package:auto_route/annotations.dart';
import 'package:secureme/_404.dart';
import 'package:secureme/features/onborading/presentation/screens/splash_screen.dart';
import 'package:secureme/features/onborading/presentation/screens/onboarding_screen.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute<dynamic>>[
    AdaptiveRoute(
      initial: true,
      fullMatch: true,
      page: SplashScreen,
      maintainState: true,
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      page: OnboardingScreen,
      maintainState: true,
    ),
    //
    AdaptiveRoute(
      path: '*',
      cupertinoPageTitle: 'Error 404',
      page: UnknownScreen,
      maintainState: true,
    ),
  ],
  replaceInRouteName: 'Screen,',
  preferRelativeImports: false,
)
class $AppRouter {}
