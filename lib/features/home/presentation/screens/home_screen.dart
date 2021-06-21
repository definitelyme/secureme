import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:line_icons/line_icon.dart';
import 'package:secureme/utils/utils.dart';
import 'package:secureme/widgets/widgets.dart';

/// A stateless widget to render HomeScreen.
class HomeScreen extends StatelessWidget with AutoRouteWrapper {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: AdaptiveToolbar(
        // showCustomLeading: false,
        // implyLeading: false,
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
                        color: Colors.red,
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
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100.0),
          child: Material(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: SizedBox(
              height: App.shortest * 0.5,
              width: App.shortest * 0.5,
              child: CustomPaint(
                painter: OutlineCirclePainter(
                  color: AppColors.material(AppColors.errorRed).shade700,
                  filled: true,
                ),
                child: CustomPaint(
                  painter: OutlineCirclePainter(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    diameter: App.shortest * 0.44,
                    filled: true,
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: CustomPaint(
                      painter: OutlineCirclePainter(
                        color: AppColors.material(AppColors.errorRed).shade700,
                        diameter: App.shortest * 0.37,
                        filled: true,
                      ),
                      child: CustomPaint(
                        painter: OutlineCirclePainter(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          diameter: App.shortest * 0.28,
                          filled: true,
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: LineIcon.exclamationTriangle(
                            size: 70,
                            color: AppColors.errorRed,
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
      ),
    );
  }
}

class OutlineCirclePainter extends CustomPainter {
  final Color color;
  final double? diameter;
  final bool filled;
  final double stroke;

  const OutlineCirclePainter({
    this.color = AppColors.accentColor,
    this.stroke = 1.0,
    this.diameter,
    this.filled = false,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = color
      ..style = filled ? PaintingStyle.fill : PaintingStyle.stroke
      ..strokeWidth = stroke;

    canvas.drawCircle(
      Offset(size.width * 0.5, size.height * 0.51),
      (diameter ?? size.width) * 0.5,
      Paint()
        ..color = Colors.black12
        ..strokeWidth = 3.0
        ..style = PaintingStyle.stroke,
    );

    canvas.drawCircle(
      Offset(size.width * 0.5, size.height * 0.5),
      (diameter ?? size.width) * 0.5,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
