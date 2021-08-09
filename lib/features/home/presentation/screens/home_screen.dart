import 'dart:math' as math show sin, pi, sqrt;

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:line_icons/line_icon.dart';
import 'package:secureme/utils/utils.dart';
import 'package:secureme/widgets/widgets.dart';

part '../widgets/home_widgets.part.dart';

/// A stateless widget to render HomeScreen.
class HomeScreen extends StatefulWidget with AutoRouteWrapper {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _HomeScreenState extends State<HomeScreen>
    with
        TickerProviderStateMixin<HomeScreen>,
        AutomaticKeepAliveClientMixin<HomeScreen> {
  static const double _btnElevation = 2.0;
  // static final Color _panicButtonColor =
  //     Palette.material(Palette.sosRed).shade800;

  static final BorderRadius _radius = BorderRadius.circular(10.0);

  static const Color kAlertColor = Palette.sosRed;

  late AnimationController _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..repeat();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return AdaptiveScaffold(
      adaptiveToolbar: AdaptiveToolbar(
        transitionBetweenRoutes: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () => navigator.push(const NotificationRoute()),
              splashRadius: 28,
              color: Palette.accentColor,
              icon: LineIcon.bellAlt(),
            ),
          ),
          //
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () => navigator.push(const ProfileRoute()),
              splashRadius: 28,
              iconSize: 40,
              icon: const Hero(
                tag: HeroTag.kHomeUserPhoto,
                child: CircleAvatar(
                  maxRadius: 22.0,
                  minRadius: 17.0,
                  backgroundImage: AssetImage(AppAssets.female),
                  backgroundColor: Colors.transparent,
                  child: SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: Visibility(
                      visible: false,
                      child: Material(
                        shape: CircleBorder(),
                        clipBehavior: Clip.hardEdge,
                        color: Palette.accentColor,
                        child: SizedBox(
                          width: double.infinity,
                          height: double.infinity,
                          child: Center(
                            child: Text('BE'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: Helpers.physics,
          scrollDirection: Axis.vertical,
          controller: ScrollController(),
          padding: EdgeInsets.symmetric(horizontal: App.appPadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SafeArea(
                child: GestureDetector(
                  onTap: () {
                    print('I need help');
                  },
                  child: Center(
                    child: CustomPaint(
                      painter: CirclePainter(_controller, color: kAlertColor),
                      child: SizedBox(
                        width: 0.7.sw,
                        height: 0.6.sw,
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: RadialGradient(
                                  colors: [
                                    kAlertColor,
                                    Color.lerp(
                                      kAlertColor,
                                      Colors.black,
                                      .05,
                                    )!
                                  ],
                                ),
                              ),
                              child: ScaleTransition(
                                scale: Tween(begin: 0.99, end: 1.0).animate(
                                  CurvedAnimation(
                                    parent: _controller,
                                    curve: const CurveWave(),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(40.0),
                                  child: AppAssets.siren,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: _ShapedButton(
                      text: 'Get emergency tips',
                      svg: AppAssets.badgeFilled,
                      onPressed: () {},
                      textColor: Helpers.foldTheme(
                        light: () => null,
                        dark: () => Colors.black,
                      ),
                      position: _ShapedButtonPosition.left,
                      radius: _radius,
                      backgroundColor: Helpers.foldTheme(
                        light: () => Palette.accent2Color.shade300,
                        dark: () => Colors.white,
                      )!,
                      iconColor: Palette.accentColor,
                    ),
                  ),
                  //
                  Flexible(
                    child: _ShapedButton(
                      text: 'Send an SOS message',
                      animateText: true,
                      svg: AppAssets.paperPlane,
                      onPressed: () {},
                      position: _ShapedButtonPosition.right,
                      backgroundColor: Palette.accentColor,
                      textColor: Colors.white,
                      radius: _radius,
                      iconColor: Colors.white,
                    ),
                  ),
                ],
              ),
              //
              VerticalSpace(height: 0.03.sw),
              //
              Card(
                color: Palette.accentColor,
                elevation: _btnElevation,
                shape: RoundedRectangleBorder(borderRadius: _radius),
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.black12,
                  highlightColor: Colors.white10,
                  child: SizedBox(
                    height: 0.2.sw,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          right: 0.14.sw,
                          child: SvgPicture.asset(
                            '${AppAssets.policemanSitting}',
                            width: 0.15.sw,
                            fit: BoxFit.contain,
                          ),
                        ),
                        //
                        Positioned.fill(
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(0.03.sw),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: DefaultTextStyle(
                                      softWrap: true,
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Colors.white,
                                      ),
                                      child: AnimatedTextKit(
                                        animatedTexts: [
                                          TyperAnimatedText(
                                            'Got any issues? ',
                                            textStyle: TextStyle(
                                              fontSize: 21.sp,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          TyperAnimatedText(
                                            'You can chat with a '
                                            'security professional!',
                                          ),
                                        ],
                                        repeatForever: true,
                                        stopPauseOnTap: true,
                                        displayFullTextOnTap: true,
                                        onTap: () {
                                          print('Tap Event');
                                        },
                                      ),
                                    ),
                                  ),
                                  //
                                  Flexible(
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Material(
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        elevation: 2.0,
                                        color: Colors.white,
                                        child: Icon(
                                          Theme.of(context).platform.fold(
                                                material: () => Icons
                                                    .arrow_right_alt_rounded,
                                                cupertino: () => CupertinoIcons
                                                    .right_chevron,
                                              ),
                                          size: 30.0.sp,
                                          color: Palette.accentColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
