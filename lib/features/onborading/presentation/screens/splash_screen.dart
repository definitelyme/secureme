import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:secureme/features/onborading/presentation/managers/index.dart';
import 'package:secureme/manager/locator/locator.dart';
import 'package:secureme/utils/utils.dart';
import 'package:secureme/widgets/widgets.dart';

class SplashScreen extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<OnboardingCubit>()..delaySplash(),
      child: BlocListener<OnboardingCubit, OnboardingState>(
        listenWhen: (p, c) => p.isLoading != c.isLoading,
        listener: (context, state) {
          if (state.isLoading == false)
            navigator.pushAndPopUntil(
              Onboarding(),
              predicate: (_) => false,
            );
        },
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Align(
              alignment: Alignment.center,
              child: Image(
                image: AssetImage('${AppAssets.logo}'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          //
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: App.height * 0.05,
            child: BlocBuilder<OnboardingCubit, OnboardingState>(
              builder: (context, state) => Visibility(
                visible: state.isLoading,
                child: SpinKitWave(
                  color: Theme.of(context).accentColor,
                  size: 30.0,
                  duration: Duration(milliseconds: 1200),
                  type: SpinKitWaveType.center,
                  itemCount: 7,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
