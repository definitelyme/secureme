import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:secureme/features/onborading/domain/onboarding.dart';
import 'package:secureme/features/onborading/presentation/managers/index.dart';
import 'package:secureme/manager/locator/locator.dart';
import 'package:secureme/widgets/widgets.dart';
import 'package:secureme/utils/utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<OnboardingCubit>()..attachControllerListener(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: BlocBuilder<OnboardingCubit, OnboardingState>(
              builder: (c, s) => PageView.builder(
                itemCount: context.read<OnboardingCubit>().items.size,
                controller: s.controller,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) => OnBoardingItemBuilder(
                  item:
                      context.read<OnboardingCubit>().items.elementAtOrNull(i),
                ),
              ),
            ),
          ),
          //
          Positioned(
            left: App.height * 0.02,
            right: App.height * 0.02,
            bottom: App.height * 0.02,
            child: BlocBuilder<OnboardingCubit, OnboardingState>(
              builder: (c, s) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedSmoothIndicator(
                    activeIndex: s.currentIndex,
                    count: context.read<OnboardingCubit>().items.size,
                    effect: ExpandingDotsEffect(
                      expansionFactor: 3.5,
                      activeDotColor: App.theme.accentColor,
                      radius: 100.0,
                      spacing: 6.0,
                      dotHeight: App.height * 0.006,
                      dotWidth: 8.0,
                      dotColor: AppColors.accentColor.shade100,
                    ),
                  ),
                  //
                  Visibility(
                    visible: context
                        .read<OnboardingCubit>()
                        .isLast(right(s.currentIndex)),
                    maintainSize: true,
                    maintainState: true,
                    maintainAnimation: true,
                    child: Material(
                      color: AppColors.accentColor,
                      elevation: 2.0,
                      clipBehavior: Clip.antiAlias,
                      type: MaterialType.circle,
                      child: InkWell(
                        onTap: context.read<OnboardingCubit>().next,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          child: Icon(
                            Icons.navigate_next_rounded,
                            color: Colors.white,
                            size: 28.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnBoardingItemBuilder extends StatelessWidget {
  final OnboardingItem<String>? item;

  const OnBoardingItemBuilder({
    Key? key,
    this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Image(
              image: AssetImage('${AppAssets.logo}'),
              fit: BoxFit.contain,
            ),
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: AutoSizeText(
                    '${item!.title}',
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: App.theme.accentColor,
                    ),
                    softWrap: true,
                    wrapWords: true,
                  ),
                ),
                //
                VerticalSpace(height: App.height * 0.035),
                //
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: App.shortest! * 0.035,
                    ),
                    child: AutoSizeText(
                      '${item!.description}',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 17.0, wordSpacing: 2.0),
                      softWrap: true,
                      wrapWords: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //
          Flexible(
            child: Visibility(
              visible: context.read<OnboardingCubit>().isLast(left(item!)),
              maintainAnimation: true,
              maintainSize: true,
              maintainState: true,
              child: AppElevatedButton(
                onPressed: () {
                  print("Okay Let's get started");
                },
                text: 'Get Started!',
                width: App.width * 0.28,
                height: App.height * 0.05,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
