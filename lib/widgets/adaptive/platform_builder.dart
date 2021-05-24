import 'dart:io';

import 'package:flutter/material.dart';
import 'package:secureme/utils/utils.dart';

typedef _PlatformBuilder = Widget Function(BuildContext context);

class PlatformBuilder extends StatelessWidget {
  final _PlatformBuilder? cupertino;
  final _PlatformBuilder? material;

  PlatformBuilder({
    Key? key,
    _PlatformBuilder? cupertino,
    _PlatformBuilder? material,
  })  : cupertino = cupertino,
        material = material,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS || Platform.isMacOS)
      return cupertino?.call(context) ?? nil;
    return material?.call(context) ?? nil;
  }
}
