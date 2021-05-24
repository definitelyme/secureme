import 'dart:math' as math;

extension NumX<T extends num> on T {
  T decimal(int places) {
    var mod = math.pow(10.0, places).toDouble();
    return ((toDouble() * mod).round().toDouble() / mod) as T;
  }

  bool isBtw(num from, num to) => from < this && to > this;
}
