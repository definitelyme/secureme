import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerticalSpace extends StatelessWidget {
  final double? width;
  final double height;
  final double? heightFactor;
  final double? widthFactor;
  final Widget? child;

  const VerticalSpace({
    Key? key,
    this.width,
    required this.height,
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
