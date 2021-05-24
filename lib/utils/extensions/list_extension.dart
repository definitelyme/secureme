extension ListX<T> on Iterable<T> {
  String foldWithSeparator([String initialValue = '', String separator = ',']) {
    // Assert T is of type String
    assert(T is String);
    return fold(initialValue, (prev, next) {
      if (last != next) return '$prev$next$separator';
      return '$prev$next';
    });
  }

  T get firstOrNull {
    try {
      return first;
    } catch (e) {
      return null as T;
    }
  }

  T get firstOrEmpty {
    try {
      return first;
    } catch (e) {
      return '' as T;
    }
  }
}
