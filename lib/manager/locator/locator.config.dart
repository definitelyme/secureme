// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i4;
import 'package:firebase_analytics/firebase_analytics.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:firebase_core/firebase_core.dart' as _i6;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i9;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i10;
import 'package:secureme/features/auth/presentation/managers/auth/auth_cubit.dart'
    as _i3;
import 'package:secureme/features/auth/presentation/managers/otp_cubit/otp_cubit.dart'
    as _i13;
import 'package:secureme/features/core/presentation/managers/network/network_cubit.dart'
    as _i11;
import 'package:secureme/features/onborading/presentation/managers/onboarding/onboarding_cubit.dart'
    as _i12;
import 'package:secureme/manager/locator/modules/modules.dart' as _i15;
import 'package:secureme/manager/theme/manager/theme_cubit.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// an extension to register the provided dependencies inside of [GetIt]
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of provided dependencies inside of [GetIt]
  Future<_i1.GetIt> $initGetIt(
      {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
    final gh = _i2.GetItHelper(this, environment, environmentFilter);
    final serviceModules = _$ServiceModules();
    final modules = _$Modules();
    gh.factory<_i3.AuthCubit>(() => _i3.AuthCubit());
    gh.lazySingleton<_i4.Connectivity>(() => serviceModules.connectionStatus);
    gh.lazySingleton<_i5.FirebaseAnalytics>(() => modules.firebaseAnalytics);
    await gh.factoryAsync<_i6.FirebaseApp>(() => modules.firebaseApp,
        preResolve: true);
    gh.lazySingleton<_i7.FirebaseAuth>(() => modules.firebaseAuth);
    gh.lazySingleton<_i8.FirebaseCrashlytics>(
        () => modules.firebaseCrashlytics);
    gh.lazySingleton<_i9.GoogleSignIn>(() => modules.googleSignIn);
    gh.lazySingleton<_i10.InternetConnectionChecker>(
        () => modules.connectionChecker);
    gh.factory<_i11.NetworkCubit>(() => _i11.NetworkCubit());
    gh.factory<_i12.OnboardingCubit>(() => _i12.OnboardingCubit());
    gh.factory<_i13.OtpCubit>(() => _i13.OtpCubit());
    gh.factory<_i14.ThemeCubit>(() => _i14.ThemeCubit());
    return this;
  }
}

class _$ServiceModules extends _i15.ServiceModules {}

class _$Modules extends _i15.Modules {}
