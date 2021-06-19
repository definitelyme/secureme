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
  const OnboardingScreen({Key? key}) : super(key: key);

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
            child: CustomPaint(
              painter: _OnBoardingMaskGroup(Helpers.foldTheme(
                light: () => Colors.grey.shade300,
                dark: () => Colors.grey.shade800,
              )!),
            ),
          ),
          //
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
            top: 5,
            right: 5,
            child: SafeArea(
              child: AppButton(
                onPressed: () => navigator.pushAndPopUntil(
                  UserOptionRoute(),
                  predicate: (_) => false,
                ),
                textColor: Helpers.foldTheme(
                  light: () => AppColors.errorRed,
                  dark: () => AppColors.lightRed,
                ),
                elevation: 0.0,
                backgroundColor: Colors.transparent,
                splashColor: Colors.white24,
                padding: EdgeInsets.symmetric(horizontal: 14.0),
                borderRadius: BorderRadius.circular(8.0),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                height: App.shortest * 0.1,
                text: 'Skip',
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
                      textColor: Colors.white,
                      backgroundColor: AppColors.accentColor,
                      splashColor: Colors.white24,
                      padding: EdgeInsets.symmetric(horizontal: 14.0),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      height: App.shortest * 0.1,
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

class _OnBoardingMaskGroup extends CustomPainter {
  final Color color;

  _OnBoardingMaskGroup(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    var paint_0 = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    var path_0 = Path();
    path_0.moveTo(size.width * 0.4279200, size.height * 0.7588177);
    path_0.quadraticBezierTo(size.width * 0.4813333, size.height * 0.7595320,
        size.width * 0.5340800, size.height * 0.7589163);
    path_0.cubicTo(
        size.width * 0.6616000,
        size.height * 0.7590271,
        size.width * 0.9082667,
        size.height * 0.7416133,
        size.width,
        size.height * 0.7032143);
    path_0.quadraticBezierTo(size.width * 1.0002133, size.height * 0.5464901,
        size.width, size.height * 0.0000123);
    path_0.lineTo(size.width * 0.0053333, 0);
    path_0.quadraticBezierTo(size.width * 0.0013333, size.height * 0.5401478,
        size.width * 0.0000267, size.height * 0.7026478);
    path_0.quadraticBezierTo(size.width * 0.1758933, size.height * 0.7478079,
        size.width * 0.4279200, size.height * 0.7588177);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
