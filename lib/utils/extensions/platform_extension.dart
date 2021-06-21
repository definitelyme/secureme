import 'package:flutter/foundation.dart';

extension PlatformX on TargetPlatform {
  T? fold<T>({
    T? Function()? cupertino,
    required T? Function() material,
    bool ignoreCupertino = false,
  }) {
    switch (this) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return ignoreCupertino
            ? cupertino?.call()
            : cupertino?.call() ?? material.call();
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
      default:
        return material.call();
    }
  }
}
