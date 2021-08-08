import 'dart:io';
import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hive/hive.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:secureme/manager/locator/locator.dart';
import 'package:secureme/manager/theme/theme.dart';
import 'package:secureme/utils/utils.dart';
import 'package:secureme/widgets/widgets.dart';

// ignore: non_constant_identifier_names
final App = Helpers.instance;

final log = Helpers.logger;

StackRouter get navigator => App.router;

// ignore: avoid_positional_boolean_parameters
void throwIf(bool condition, Object error) {
  if (condition) throw error;
}

// ignore: avoid_positional_boolean_parameters
void throwIfNot(bool condition, Object error) {
  if (!condition) throw error;
}

class Helpers {
  static const Duration autoRetrievalTimeout = Duration(seconds: 40);
  static const String currency = '₦';

  static const double buttonRadius = 10.0;
  static const double inputBorderRadius = 10.0;
  static const double inputVerticalPadding = 14.0;
  static const double inputHorizontalPadding = 12.0;
  static Future<Directory?> get rootDir async =>
      await getExternalStorageDirectory();
  static Future<Directory> get cacheDir async => kIsWeb
      ? HydratedStorage.webStorageDirectory
      : await getTemporaryDirectory();
  static Future<Directory> get documentsDir async =>
      await getApplicationDocumentsDirectory();
  static const ScrollPhysics physics = BouncingScrollPhysics();
  static const Duration willPopTimeout = Duration(seconds: 3);
  static Logger logger = Logger(
    filter: env.flavor == BuildFlavor.dev
        ? DevelopmentFilter()
        : ProductionFilter(),
    printer: HybridPrinter(PrettyPrinter(
      methodCount: 3, // number of method calls to be displayed
      errorMethodCount: 10, // number of method calls if stacktrace is provided
      lineLength: 100, // width of the output
      colors: true, // Colorful log messages
      printEmojis: true,
      printTime: false,
    )),
  );

  static Widget setup(BuildContext current, AppRouter router, Widget child) {
    var _context = router.navigatorKey.currentContext ?? current;
    // Precache dependencies & images
    precache(_context);
    // forceAppUpdate();
    if (!_singleton.isInitialized) {
      instance = _singleton
        ..context = _context
        ..isInitialized = true;
    }

    // Initialize router
    instance.router = router;

    // Return child
    return child;
  }

  static String writeNotNull(String other) {
    if (other.trim().isNotEmpty) return other;
    return '';
  }

  static DateTime getDate(DateTime d) =>
      DateTime(d.year, d.month, d.day, d.hour, d.minute, d.second);

  static void hideKeyboard([BuildContext? context]) {
    FocusNode currentFocus = FocusScope.of(context ?? App.context);
    if (!currentFocus.hasPrimaryFocus &&
        !currentFocus.hasFocus &&
        currentFocus.children.isEmpty)
      FocusManager.instance.primaryFocus!.unfocus();
  }

  static T? foldTheme<T>({
    required T? Function() light,
    T? Function()? dark,
    BuildContext? context,
  }) {
    var isDarkMode =
        BlocProvider.of<ThemeCubit>(context ?? App.context).isDarkMode ||
            (MediaQuery.of(context ?? App.context).platformBrightness ==
                Brightness.dark);

    return isDarkMode ? dark?.call() : light.call();
  }

  static Color computeLuminance(Color color) =>
      color.computeLuminance() > 0.5 ? Colors.black : Colors.white;

  /// Precache Application Images..ensures faster image rendering.
  static Future<void> precache(BuildContext context) async {
    AppAssets.images.forEach(
      (img) async => await precacheImage(AssetImage(img), context),
    );
  }

  static String hhmmss([Duration duration = Duration.zero]) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    var twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    var twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${duration.inHours > 0 ? twoDigits(duration.inHours).pad(":") : ''}"
        "${twoDigitMinutes.pad(":")}"
        '$twoDigitSeconds';
  }

  static Future<void> platformPop({bool animated = true}) async {
    await SystemChannels.platform
        .invokeMethod<void>('SystemNavigator.pop', animated);
  }

  final DateTime today = DateTime.now();
  double get appPadding {
    try {
      return 0.05.sw;
    } catch (_) {
      return App.shortest * 0.05;
    }
  }

  bool isInitialized = false;

  late BuildContext context;

  late AppRouter router;

  static late Helpers instance;

  /// Create Singleton start ///
  static final Helpers _singleton = Helpers._();
  factory Helpers() => _singleton;
  Helpers._();
  // End ////

  Color? get backgroundOverlayColor => App.theme.primaryColor.withOpacity(0.91);

  Widget get waveLoadingBar => Container(
        color: App.theme.primaryColor.withOpacity(0.65),
        child: Center(
          child: SpinKitWave(
            color: theme.accentColor,
            size: 30.0,
            duration: const Duration(milliseconds: 1200),
            type: SpinKitWaveType.center,
            itemCount: 7,
          ),
        ),
      );

  Widget get circularLoadingOverlay => Container(
        color: App.theme.primaryColor.withOpacity(0.65),
        child: Center(
          child: CircularProgressBar.adaptive(
            width: width * 0.08,
            height: width * 0.08,
            strokeWidth: 3.5,
            radius: 14,
          ),
        ),
      );

  Widget positionedLoader(
    BuildContext context, [
    bool overlay = true,
    Widget? loader,
  ]) {
    final _keyboardClosed = MediaQuery.of(context).viewInsets.bottom == 0;
    double? _topHeight;
    try {
      _topHeight = Scaffold.of(context).appBarMaxHeight;
    } catch (e) {
      _topHeight = kToolbarHeight;
    }

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: _topHeight ?? kToolbarHeight),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment:
              _keyboardClosed ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            loader ??
                CircularProgressBar.adaptive(
                  width: width * 0.08,
                  height: width * 0.08,
                  strokeWidth: 3.5,
                  radius: 14,
                ),
          ],
        ),
      ),
    );
  }

  GlobalKey<NavigatorState> get key => router.navigatorKey;

  // Helper method to open a Hive Box
  Box<E> box<E>(String name) => Hive.box(name);

  /// Returns the current route path
  String get currentRoute => router.current.name;

  /// give access to Theme.of(context)
  ThemeData get theme => Theme.of(context);

  /// give access to TextTheme.of(context)
  TextTheme get textTheme => theme.textTheme;

  /// give access to MediaQuery.of(context)
  MediaQueryData get mediaQuery => MediaQuery.of(context);

  /// The dimensions of the rectangle into which the scene
  /// rendered in this view will be drawn on the screen, in physical pixels.
  Size get physicalSize => window.physicalSize;

  /// The current [WidgetsBinding], if one has been created.
  WidgetsBinding? get engine => WidgetsBinding.instance;

  /// give access to Theme.of(context).iconTheme.color
  Color? get iconColor => theme.iconTheme.color;

  /// give access to FocusScope.of(context)
  FocusNode? get focusScope => FocusManager.instance.primaryFocus;

  /// give access to Immutable MediaQuery.of(context).size.height
  double get height => mediaQuery.size.height;

  /// give access to Immutable MediaQuery.of(context).size.width
  double get width => mediaQuery.size.width;

  /// give access to Vertical extent of the device
  /// with respect to Physical Size of device
  double get heightPx => physicalSize.height;

  /// give access to Horizontal extent of the device
  /// with respect to Physical Size of device
  double get widthPx => physicalSize.width;

  /// give access to Immutable MediaQuery.of(context).size.shortestSide
  double get shortest => mediaQuery.size.shortestSide;

  /// give access to Immutable MediaQuery.of(context).size.shortestSide
  double get longest => mediaQuery.size.longestSide;

  /// The lesser of the magnitudes of the [width] and the [height]
  /// with respect to Physical Size of device
  double get shortestPx => physicalSize.shortestSide;

  /// The greated of the magnitudes of the [width] and the [height]
  /// with respect to Physical Size of device
  double get longestPx => physicalSize.longestSide;

  /// Check if dark mode theme is enable on platform on android Q+
  bool get isPlatformDarkMode =>
      (mediaQuery.platformBrightness == Brightness.dark);

  /// As a rule, Flutter knows which widget to update,
  /// so this command is rarely needed. We can mention situations
  /// where you use const so that widgets are not updated with setState,
  /// but you want it to be forcefully updated when an event like
  /// language change happens. using context to make the widget dirty
  /// for performRebuild() is a viable solution.
  /// However, in situations where this is not possible, or at least,
  /// is not desired by the developer, the only solution for updating
  /// widgets that Flutter does not want to update is to use reassemble
  /// to forcibly rebuild all widgets. Attention: calling this function will
  /// reconstruct the application from the sketch, use this with caution.
  /// Your entire application will be rebuilt, and touch events will not
  /// work until the end of rendering.
  Future<void> forceAppUpdate() async {
    void rebuild(Element el) {
      el.markNeedsBuild();
      el.visitChildren(rebuild);
    }

    (context as Element).visitChildren(rebuild);
    // await engine.reassembleApplication();
  }

  PageRoute<T> adaptivePageRoute<T>({
    String? title,
    required WidgetBuilder builder,
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) {
    return Platform.isIOS
        ? CupertinoPageRoute(
            title: title,
            builder: builder,
            settings: settings,
            maintainState: maintainState,
            fullscreenDialog: fullscreenDialog,
          )
        : MaterialPageRoute(
            builder: builder,
            settings: settings,
            maintainState: maintainState,
            fullscreenDialog: fullscreenDialog,
          );
  }

  Future<U> showAdaptiveDatePicker<U>(
    BuildContext context, {
    DateTime? selectedDate,
    DateTime? firstDate,
    DateTime? lastDate,
    DatePickerMode initialDatePickerMode = DatePickerMode.year,
    String? confirmText,
    String? cancelText,
    String? fieldHintText,
    String? fieldLabelText,
    String? helpText,
    Locale? locale,
    DateTime? currentDate,
    String? errorFormatText,
    String? errorInvalidText,
    Widget Function(BuildContext, Widget?)? builder,
    bool Function(DateTime)? selectableDayPredicate,
    required void Function(DateTime) onChanged,
  }) async {
    // Set defaults
    firstDate ??= DateTime(1910);
    lastDate ??= App.today;
    selectedDate ??= lastDate;

    switch (theme.platform) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return showCupertinoDatePicker(
          context,
          selectedDate: selectedDate,
          firstDate: firstDate,
          lastDate: lastDate,
          confirmText: confirmText,
          cancelText: cancelText,
          fieldHintText: fieldHintText,
          fieldLabelText: fieldLabelText,
          helpText: helpText,
          locale: locale,
          currentDate: currentDate,
          errorFormatText: errorFormatText,
          errorInvalidText: errorInvalidText,
          builder: builder,
          onChanged: onChanged,
        ) as U;
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
      default:
        final date = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: firstDate,
          lastDate: lastDate,
          confirmText: confirmText,
          cancelText: cancelText,
          fieldHintText: fieldHintText,
          fieldLabelText: fieldLabelText,
          initialDatePickerMode: initialDatePickerMode,
          helpText: helpText,
          locale: locale,
          currentDate: currentDate,
          errorFormatText: errorFormatText,
          errorInvalidText: errorInvalidText,
          builder: builder,
          selectableDayPredicate: selectableDayPredicate,
        );
        // Fire callback after selection
        return onChanged(date!) as U;
    }
  }

  Future<U> showCupertinoDatePicker<U>(
    BuildContext context, {
    DateTime? selectedDate,
    DateTime? firstDate,
    DateTime? lastDate,
    String? confirmText,
    String? cancelText,
    String? fieldHintText,
    String? fieldLabelText,
    String? helpText,
    Locale? locale,
    DateTime? currentDate,
    String? errorFormatText,
    String? errorInvalidText,
    Color? backgroundColor,
    bool use24hFormat = false,
    Function(BuildContext, Widget)? builder,
    required void Function(DateTime) onChanged,
  }) async {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return Container(
          height: MediaQuery.of(context).copyWith().size.height / 3,
          color: Theme.of(context).primaryColor,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            backgroundColor: backgroundColor,
            onDateTimeChanged: onChanged,
            initialDateTime: selectedDate,
            minimumDate: firstDate,
            maximumDate: lastDate,
            use24hFormat: use24hFormat,
          ),
        );
      },
    ) as U;
  }

  Future<U> showAlertDialog<U>({
    required BuildContext context,
    required WidgetBuilder builder,
    bool barrierDismissible = true,
    Color? barrierColor,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
  }) async {
    if (Platform.isIOS)
      return showCupertinoDialog<U>(
        context: context,
        builder: builder,
        useRootNavigator: useRootNavigator,
        barrierDismissible: barrierDismissible,
        routeSettings: routeSettings,
      ) as U;
    return showDialog<U>(
      context: context,
      builder: builder,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
    ) as U;
  }

  int calculateAge(DateTime birthDate) {
    var currentDate = today;
    var age = currentDate.year - birthDate.year;
    var month1 = currentDate.month;
    var month2 = birthDate.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      var day1 = currentDate.day;
      var day2 = birthDate.day;
      if (day2 > day1) {
        age--;
      }
    }
    return age;
  }

  Future<void> report<T>({
    required T exception,
    required StackTrace stack,
    bool printDetails = false,
    String reason = 'Non-fatal Try/Catch Exception',
  }) async {
    if (getIt<FirebaseCrashlytics>().isCrashlyticsCollectionEnabled)
      await getIt<FirebaseCrashlytics>().recordError(
        exception,
        stack,
        printDetails: printDetails,
        reason: reason,
      );
  }
}
