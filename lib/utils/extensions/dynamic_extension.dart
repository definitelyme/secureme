extension DynamicX on dynamic {
  bool get isNull => this == null;

  /// In dart2js (in flutter v1.17) a var by default is undefined.
  /// *Use this only if you are in version <- 1.17*.
  /// So we assure the null type in json convertions to avoid the
  /// "value":value==null?null:value; someVar.nil will force the null type
  /// if the var is null or undefined.
  /// `nil` taken from ObjC just to have a shorter sintax.
  dynamic get nil => this;

  bool get isBlank {
    switch (runtimeType) {
      case String:
      case List:
      case Map:
      case Set:
      case Iterable:
        return this.isEmpty as bool;
      default:
        return toString() == 'null' || toString().trim().isEmpty;
    }
  }

  /// Checks if data is null or blank (empty or only contains whitespace).
  bool get isNullOrBlank {
    if (isNull) return true;

    return isBlank;
  }
}
