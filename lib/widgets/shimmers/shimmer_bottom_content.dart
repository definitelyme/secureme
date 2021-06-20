import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerBottomContent extends StatelessWidget {
  final double width;
  final double height;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final double borderRadius;
  final bool isEnabled;
  final Color boxColor;
  final Color shimmerBaseColor;
  final Color shimmerHighlightColor;

  const ShimmerBottomContent({
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
        child: Column(
          children: [
            Expanded(
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
            //
            const SizedBox(height: 10),
            //
            Expanded(
              flex: 3,
              child: Container(
                margin: margin,
                padding: padding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: 6,
                      width: width * 0.8,
                      decoration: BoxDecoration(
                        color: boxColor,
                        borderRadius: BorderRadius.circular(borderRadius),
                      ),
                    ),
                    //
                    const SizedBox(height: 8),
                    //
                    Container(
                      width: width * 0.65,
                      height: 6,
                      decoration: BoxDecoration(
                        color: boxColor,
                        borderRadius: BorderRadius.circular(borderRadius),
                      ),
                    ),
                    //
                    const SizedBox(height: 8),
                    //
                    Container(
                      width: width * 0.95,
                      height: 6,
                      decoration: BoxDecoration(
                        color: boxColor,
                        borderRadius: BorderRadius.circular(borderRadius),
                      ),
                    ),
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
