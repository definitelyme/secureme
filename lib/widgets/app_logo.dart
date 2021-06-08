import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:secureme/utils/utils.dart';

enum _LogoPosition { stacked, horizontal, markOnly }

Widget _builder(BuildContext context) => nil;

class SecuremeLogo extends StatelessWidget {
  static const double kMaxHeight = 200.0;
  static const double kHeight = 80.0;
  static const double kMaxWidth = double.infinity;
  static const double kWidth = 80.0;

  final String logo;
  final double maxHeight;
  final double maxWidth;
  final double logoHeight;
  final double logoWidth;
  final BoxFit fit;
  final AlignmentGeometry alignment;
  final ImageRepeat repeat;
  final WidgetBuilder builder;
  final EdgeInsetsGeometry padding;
  final _LogoPosition _position;

  const SecuremeLogo({
    Key? key,
    this.logo = '${AppAssets.logo}',
    this.logoHeight = kHeight,
    this.logoWidth = kWidth,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
    this.repeat = ImageRepeat.noRepeat,
  })  : _position = _LogoPosition.markOnly,
        builder = _builder,
        padding = EdgeInsets.zero,
        maxHeight = kMaxHeight,
        maxWidth = kMaxWidth,
        super(key: key);

  const SecuremeLogo.horizontal({
    Key? key,
    this.logo = '${AppAssets.logo}',
    this.logoHeight = kHeight,
    this.logoWidth = kWidth,
    this.maxHeight = kMaxHeight,
    this.maxWidth = kMaxWidth,
    this.fit = BoxFit.cover,
    this.alignment = Alignment.center,
    this.repeat = ImageRepeat.noRepeat,
    required this.builder,
    this.padding = EdgeInsets.zero,
  })  : _position = _LogoPosition.horizontal,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return _position.fold(
      markOnly: () => Image.asset(
        logo,
        fit: fit,
        height: logoHeight,
        width: logoWidth,
        alignment: alignment,
        semanticLabel: '${AppStrings.appName} Logo',
        repeat: repeat,
      ),
      horizontal: () => FractionallySizedBox(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: maxHeight,
            maxWidth: maxWidth,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Padding(
                  padding: padding,
                  child: Image.asset(
                    logo,
                    fit: fit,
                    height: logoHeight,
                    width: logoWidth,
                    alignment: alignment,
                    semanticLabel: '${AppStrings.appName} Logo',
                    repeat: repeat,
                  ),
                ),
              ),
              //
              Expanded(
                flex: 2,
                child: builder.call(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

extension _LogoPositionX on _LogoPosition {
  T fold<T>({
    required T Function() markOnly,
    T Function()? stacked,
    T Function()? horizontal,
  }) {
    switch (this) {
      case _LogoPosition.stacked:
        return stacked?.call() ?? markOnly.call();
      case _LogoPosition.horizontal:
        return horizontal?.call() ?? markOnly.call();
      case _LogoPosition.markOnly:
      default:
        return markOnly.call();
    }
  }
}
