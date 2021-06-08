import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          Positioned.fill(
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
            top: 0,
            right: 0,
            child: SafeArea(
              child: AppButton(
                onPressed: () => navigator.pushAndPopUntil(
                  LoginRoute(),
                  predicate: (_) => false,
                ),
                text: 'Skip',
                textColor: AppColors.errorRed,
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
                  Visibility(
                    visible: s.currentIndex != 0,
                    child: AppIconButton(
                      onPressed: context.read<OnboardingCubit>().prev,
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      child: RotatedBox(
                        quarterTurns: 2,
                        child: Icon(
                          Icons.navigate_next_rounded,
                          color: Helpers.computeLuminance(
                            Theme.of(context).scaffoldBackgroundColor,
                          ),
                          size: 28.0,
                        ),
                      ),
                    ),
                  ),
                  //
                  Visibility(
                    visible: !context
                        .read<OnboardingCubit>()
                        .isLast(right(s.currentIndex)),
                    child: AnimatedSmoothIndicator(
                      activeIndex: s.currentIndex,
                      count: context.read<OnboardingCubit>().items.size,
                      effect: ExpandingDotsEffect(
                        expansionFactor: 3.5,
                        activeDotColor: App.theme.accentColor,
                        radius: 100.0,
                        spacing: 6.0,
                        dotHeight: App.height * 0.006,
                        dotWidth: 6.0,
                        dotColor: AppColors.accentColor.shade100,
                      ),
                    ),
                  ),
                  //
                  Visibility(
                    visible: !context
                        .read<OnboardingCubit>()
                        .isLast(right(s.currentIndex)),
                    replacement: AppButton(
                      onPressed: () => navigator.pushAndPopUntil(
                        UserOptionRoute(),
                        predicate: (_) => false,
                      ),
                      text: 'Get Started!',
                    ),
                    child: AppIconButton(
                      onPressed: context.read<OnboardingCubit>().next,
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      child: Icon(
                        Icons.navigate_next_rounded,
                        color: Helpers.computeLuminance(
                          Theme.of(context).scaffoldBackgroundColor,
                        ),
                        size: 28.0,
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
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: AutoSizeText(
                '${item!.title}',
                textAlign: TextAlign.start,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
                softWrap: true,
                wrapWords: true,
              ),
            ),
            //
            Flexible(
              child: AutoSizeText(
                '${item!.description}',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 17.0, wordSpacing: 2.0),
                softWrap: true,
                wrapWords: true,
              ),
            ),

            //
            Flexible(
              flex: 3,
              child: SvgPicture.asset(
                item!.image,
                width: App.shortest,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
