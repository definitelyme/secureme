import 'dart:math' as math show sin, pi, sqrt;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:secureme/utils/utils.dart';
import 'package:secureme/widgets/widgets.dart';

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
  late AnimationController _controller;
  static const Color kAlertColor = AppColors.lightRed;

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
                        color: Colors.teal,
                        child: SizedBox(
                          width: double.infinity,
                          height: double.infinity,
                          child: Center(
                            child: Text('BE', style: TextStyle()),
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
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Helpers.appPadding,
            ),
            child: Stack(
              // mainAxisSize: MainAxisSize.min,
              children: [
                Positioned.fill(
                  child: Center(
                    child: CustomPaint(
                      painter: CirclePainter(
                        _controller,
                        color: kAlertColor,
                      ),
                      child: SizedBox(
                        height: 1.sw,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              child: Text('Hello'),
                            ),
                            const Positioned.fill(
                              child: Icon(
                                Icons.speaker_phone,
                                size: 44,
                              ),
                            ),
                            SizedBox(
                              width: 0.7.sw,
                              height: 0.7.sw,
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
                                      scale:
                                          Tween(begin: 0.99, end: 1.0).animate(
                                        CurvedAnimation(
                                          parent: _controller,
                                          curve: const CurveWave(),
                                        ),
                                      ),
                                      // child:
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                //
                // Positioned.fromRect(
                //   rect: Rect.fromLTWH(0.0, 150, 0.5.sw, 0.45.sw),
                //   child: Column(
                //     children: [
                //       Align(
                //         alignment: Alignment.topLeft,
                //         child: SizedBox(
                //           // height: App.shortest * 0.43,
                //           // width: App.shortest * 0.45,
                //           child: ClipPath(
                //             clipper: const ContainerClipper(),
                //             child: Container(
                //               height: 0.45.sw,
                //               width: 0.5.sw,
                //               decoration: BoxDecoration(
                //                 color: Colors.teal,
                //                 borderRadius: BorderRadius.circular(12.0),
                //               ),
                //               child: const Text('Hello world'),
                //             ),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class CirclePainter extends CustomPainter {
  final Animation<double> _animation;

  final Color color;

  const CirclePainter(
    this._animation, {
    required this.color,
  }) : super(repaint: _animation);

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTRB(0.0, 0.0, size.width, size.height);
    for (var wave = 3; wave >= 0; wave--) {
      circle(canvas, rect, wave + _animation.value);
    }
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) => true;

  void circle(Canvas canvas, Rect rect, double value) {
    final opacity = (1.0 - (value / 4.0)).clamp(0.0, 1.0);
    final _color = color.withOpacity(opacity);
    final size = rect.width / 2;
    final area = size * size;
    final radius = math.sqrt(area * value / 4);
    final paint = Paint()..color = _color;
    canvas.drawCircle(rect.center, radius, paint);
  }
}

class CurveWave extends Curve {
  const CurveWave();

  @override
  double transform(double t) {
    if (t == 0 || t == 1) {
      return 0.01;
    }
    return math.sin(t * math.pi);
  }
}

class ContainerClipper extends CustomClipper<Path> {
  const ContainerClipper();

  @override
  Path getClip(Size size) {
    var path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(0, size.height);
    path_0.lineTo(size.width, size.height);
    path_0.quadraticBezierTo(size.width * 1.0018500, size.height * 0.6492000,
        size.width * 0.9971500, size.height * 0.4510000);
    path_0.cubicTo(
        size.width * 0.9879000,
        size.height * 0.4188000,
        size.width * 0.9643000,
        size.height * 0.3956500,
        size.width * 0.9199000,
        size.height * 0.3876500);
    path_0.cubicTo(
        size.width * 0.8466500,
        size.height * 0.3623500,
        size.width * 0.7558000,
        size.height * 0.3454000,
        size.width * 0.6470500,
        size.height * 0.2659000);
    path_0.cubicTo(
        size.width * 0.5475500,
        size.height * 0.1937500,
        size.width * 0.5265000,
        size.height * 0.1588000,
        size.width * 0.4697500,
        size.height * 0.0822000);
    path_0.cubicTo(
        size.width * 0.4202500,
        size.height * 0.0231500,
        size.width * 0.4094000,
        size.height * 0.0011500,
        size.width * 0.3339500,
        size.height * 0.0032500);
    path_0.quadraticBezierTo(
        size.width * 0.2339500, size.height * 0.0032500, 0, 0);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    Path path_0 = Path();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
