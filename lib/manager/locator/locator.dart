import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:secureme/manager/locator/locator.config.dart';

final GetIt getIt = GetIt.I;

/// Dependency Injector.
/// DO NOT modify Generated code!
///
/// To refresh generated file,
///
/// Use: flutter pub run build_runner build [--delete-conflicting-outputs]
///
/// Example: getIt<FirebaseAuth>()
@InjectableInit(preferRelativeImports: false, asExtension: true)
Future<void> locator(String env) async =>
    await getIt.$initGetIt(environment: env);
