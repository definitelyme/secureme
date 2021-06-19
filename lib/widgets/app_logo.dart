import 'package:auto_size_text/auto_size_text.dart';
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
  final WidgetBuilder? builder;
  final EdgeInsetsGeometry padding;
  final _LogoPosition _position;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextAlign? textAlign;
  final int? maxLines;

  const SecuremeLogo({
    Key? key,
    this.logo = '${AppAssets.logo}',
    this.logoHeight = kHeight,
    this.logoWidth = kWidth,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
    this.repeat = ImageRepeat.noRepeat,
    this.padding = EdgeInsets.zero,
  })  : _position = _LogoPosition.markOnly,
        fontWeight = null,
        fontSize = null,
        textAlign = null,
        maxLines = 1,
        builder = _builder,
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
    this.builder,
    this.padding = EdgeInsets.zero,
    this.maxLines = 1,
    this.fontSize = 15.5,
    this.fontWeight = FontWeight.w300,
    this.textAlign = TextAlign.center,
  })  : _position = _LogoPosition.horizontal,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return _position.fold(
      markOnly: () => Padding(
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
      horizontal: () => FractionallySizedBox(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: maxHeight,
            maxWidth: maxWidth,
          ),
          child: Row(
            // mainAxisSize: MainAxisSize.min,
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
                child: builder?.call(context) ??
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Flexible(
                            child: AutoSizeText.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'SECURE',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'ME',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                              maxLines: maxLines,
                              textAlign: textAlign,
                              softWrap: true,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                    fontSize: 20.0,
                                    letterSpacing: 1,
                                  ),
                            ),
                          ),
                          //
                          Flexible(
                            child: AutoSizeText(
                              'INITIATIVE',
                              maxLines: maxLines,
                              textAlign: textAlign,
                              softWrap: true,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                    fontSize: fontSize,
                                    letterSpacing: 6,
                                    fontWeight: fontWeight,
                                  ),
                            ),
                          ),
                        ],
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
