import 'package:auto_route/annotations.dart';
import 'package:secureme/_404.dart';
import 'package:secureme/features/auth/presentation/screens/index.dart';
import 'package:secureme/features/home/presentation/screens/index.dart';
import 'package:secureme/features/onborading/presentation/screens/splash_screen.dart';
import 'package:secureme/features/onborading/presentation/screens/onboarding_screen.dart';
import 'package:secureme/features/onborading/presentation/screens/user_option_screen.dart';

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
      fullMatch: true,
      page: UserOptionScreen,
      maintainState: true,
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      page: LoginScreen,
      maintainState: true,
      cupertinoPageTitle: 'Login',
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      page: SignupScreen,
      maintainState: true,
      cupertinoPageTitle: 'Sign Up',
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      page: OtpVerificationScreen,
      maintainState: true,
      cupertinoPageTitle: 'Verification',
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      page: ForgotPasswordScreen,
      maintainState: true,
      cupertinoPageTitle: 'Forgot Password',
    ),

    ///
    ///////
    ///
    AdaptiveRoute(
      fullMatch: true,
      page: HomeScreen,
      maintainState: true,
      cupertinoPageTitle: 'Home',
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      page: ProfileScreen,
      maintainState: true,
      cupertinoPageTitle: 'Profile',
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      page: EditProfileScreen,
      maintainState: true,
      cupertinoPageTitle: 'Profile',
    ),
    //
    AdaptiveRoute(
      path: '*',
      cupertinoPageTitle: 'Error 404',
      page: UnknownScreen,
      maintainState: true,
    ),
  ],
  replaceInRouteName: 'Screen,Route',
  preferRelativeImports: false,
)
class $AppRouter {}
