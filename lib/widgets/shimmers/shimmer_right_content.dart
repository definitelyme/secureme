import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerRightContent extends StatelessWidget {
  final double width;
  final double height;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final double borderRadius;
  final bool isEnabled;
  final Color boxColor;
  final Color shimmerBaseColor;
  final Color shimmerHighlightColor;

  const ShimmerRightContent({
    Key? key,
    this.width = double.infinity,
    this.height = double.infinity,
    this.borderRadius = 0.0,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.isEnabled = true,
    required this.boxColor,
    required this.shimmerBaseColor,
    required this.shimmerHighlightColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: shimmerBaseColor,
      highlightColor: shimmerHighlightColor,
      enabled: isEnabled,
      direction: ShimmerDirection.ltr,
      child: Container(
        width: width,
        height: height,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              flex: 6,
              child: Container(
                margin: margin,
                padding: padding,
                decoration: BoxDecoration(
                  color: boxColor,
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            Flexible(
              flex: 10,
              child: Container(
                margin: margin,
                padding: padding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.1),
                    Expanded(
                      child: Container(
                        height: 10,
                        width: width * 0.15,
                        decoration: BoxDecoration(
                          color: boxColor,
                          borderRadius: BorderRadius.circular(borderRadius),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.1),
                    Expanded(
                      child: Container(
                        width: width * 0.8,
                        decoration: BoxDecoration(
                          color: boxColor,
                          borderRadius: BorderRadius.circular(borderRadius),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Expanded(
                      child: Container(
                        width: width * 0.7,
                        decoration: BoxDecoration(
                          color: boxColor,
                          borderRadius: BorderRadius.circular(borderRadius),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Expanded(
                      child: Container(
                        width: width * 0.5,
                        decoration: BoxDecoration(
                          color: boxColor,
                          borderRadius: BorderRadius.circular(borderRadius),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.2),
                    Expanded(
                      child: Container(
                        width: width * 0.5,
                        decoration: BoxDecoration(
                          color: boxColor,
                          borderRadius: BorderRadius.circular(borderRadius),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.1),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
