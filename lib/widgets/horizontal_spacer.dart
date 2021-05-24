import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalSpace extends StatelessWidget {
  final double width;
  final double? height;
  final Widget? child;
  final double? heightFactor;
  final double? widthFactor;

  const HorizontalSpace({
    Key? key,
    required this.width,
    this.height,
    this.heightFactor,
    this.widthFactor,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => FractionallySizedBox(
        heightFactor: heightFactor,
        widthFactor: widthFactor,
        child: SizedBox(
          width: width,
          height: height,
          child: child,
        ),
      );
}
