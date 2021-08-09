part of '../screens/home_screen.dart';

enum _ShapedButtonPosition { left, right }

class _ShapedButton extends StatelessWidget {
  final Color backgroundColor;
  final Color? iconColor;
  final Color? textColor;
  final VoidCallback? onPressed;
  final _ShapedButtonPosition position;
  final BorderRadius radius;
  final String svg;
  final String text;
  final bool animateText;

  const _ShapedButton({
    Key? key,
    this.radius = BorderRadius.zero,
    this.onPressed,
    this.iconColor,
    this.textColor,
    this.animateText = false,
    required this.text,
    required this.svg,
    required this.backgroundColor,
    required this.position,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: position.fold(
        left: () => Matrix4.rotationY(0),
        right: () => Matrix4.rotationY(math.pi),
      )!,
      child: ClipPath(
        clipper: const EmergencyTipsClipper(),
        child: SizedBox(
          height: 0.35.sw,
          width: 0.42.sw,
          child: Card(
            elevation: 2.0,
            color: backgroundColor,
            shadowColor: Helpers.foldTheme(
              light: () => null,
              dark: () => Colors.white,
            ),
            shape: RoundedRectangleBorder(borderRadius: radius),
            child: InkWell(
              onTap: onPressed,
              borderRadius: radius,
              splashColor: Colors.black12,
              highlightColor: Colors.white10,
              child: Padding(
                padding: EdgeInsets.all(0.025.sw),
                child: Stack(
                  children: [
                    Transform(
                      alignment: Alignment.center,
                      transform: position.fold(
                        left: () => Matrix4.rotationY(0),
                        right: () => Matrix4.rotationY(math.pi),
                      )!,
                      child: SvgPicture.asset(
                        svg,
                        width: 0.084.sw,
                        color: iconColor,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Positioned.fill(
                      top: 20,
                      child: Transform(
                        alignment: Alignment.center,
                        transform: position.fold(
                          left: () => Matrix4.rotationY(0),
                          right: () => Matrix4.rotationY(math.pi),
                        )!,
                        child: Center(
                          child: Visibility(
                            visible: !animateText,
                            replacement: DefaultTextStyle(
                              softWrap: true,
                              textAlign: TextAlign.left,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: textColor,
                                fontWeight: FontWeight.w800,
                              ),
                              child: AnimatedTextKit(
                                animatedTexts: [
                                  TypewriterAnimatedText(
                                    text,
                                    speed: const Duration(milliseconds: 200),
                                  ),
                                ],
                                repeatForever: true,
                                stopPauseOnTap: false,
                                displayFullTextOnTap: true,
                              ),
                            ),
                            child: AutoSizeText(
                              text,
                              maxLines: 2,
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: textColor,
                                fontWeight: FontWeight.w900,
                              ),
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
      ),
    );
  }
}

extension _XShapedButtonPosition on _ShapedButtonPosition {
  T? fold<T>({
    T Function()? left,
    T Function()? right,
  }) {
    switch (this) {
      case _ShapedButtonPosition.right:
        return right?.call();
      case _ShapedButtonPosition.left:
      default:
        return left?.call();
    }
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

class EmergencyTipsClipper extends CustomClipper<Path> {
  const EmergencyTipsClipper();

  @override
  Path getClip(Size size) {
    var path_0 = Path();
    path_0.moveTo(0, size.height * 0.0500000);
    path_0.lineTo(0, size.height * 0.9500000);
    path_0.quadraticBezierTo(size.width * 0.0009000, size.height * 0.9984000,
        size.width * 0.0500000, size.height);
    path_0.cubicTo(
        size.width * 0.2541500,
        size.height * 1.0004000,
        size.width * 0.7336500,
        size.height * 0.9982500,
        size.width * 0.9500000,
        size.height);
    path_0.quadraticBezierTo(size.width * 1.0002500, size.height * 1.0040500,
        size.width, size.height * 0.9500000);
    path_0.quadraticBezierTo(size.width * 0.9979500, size.height * 0.4119500,
        size.width, size.height * 0.3175500);
    path_0.cubicTo(
        size.width * 1.0004500,
        size.height * 0.2748500,
        size.width * 0.9989000,
        size.height * 0.2674000,
        size.width * 0.9484500,
        size.height * 0.2580500);
    path_0.cubicTo(
        size.width * 0.7424500,
        size.height * 0.2183000,
        size.width * 0.5626000,
        size.height * 0.1413000,
        size.width * 0.4271000,
        size.height * 0.0290500);
    path_0.cubicTo(
        size.width * 0.3983500,
        size.height * 0.0081000,
        size.width * 0.3908500,
        size.height * 0.0000500,
        size.width * 0.2902000,
        size.height * 0.0005000);
    path_0.cubicTo(
        size.width * 0.2045000,
        size.height * 0.0015000,
        size.width * 0.1375000,
        size.height * 0.0012500,
        size.width * 0.0500000,
        0);
    path_0.quadraticBezierTo(size.width * -0.0028000, size.height * -0.0015500,
        0, size.height * 0.0500000);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
