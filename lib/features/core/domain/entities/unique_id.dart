import 'dart:math' as math;
import 'package:uuid/uuid.dart';

class UniqueId<T> {
  final T value;

  factory UniqueId() {
    // Grants true uniqueness
    return UniqueId._(Uuid().v1() as T);
  }

  factory UniqueId.v4() {
    // Grants true uniqueness
    return UniqueId._(Uuid().v4() as T);
  }

  factory UniqueId.fromExternal(T id) {
    // Here, we'll just have to trust what's coming in from the server :)
    assert(id != null);
    return UniqueId._(id);
  }

  factory UniqueId.int([int min = 0, int max = 100]) {
    return UniqueId._(min + math.Random.secure().nextInt(max - min) as T);
  }

  const UniqueId._(this.value);
}
