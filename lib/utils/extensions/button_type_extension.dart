enum ButtonType { elevated, flat }

extension ButtonTypeX on ButtonType {
  T fold<T>({
    T Function()? elevated,
    required T Function() flat,
  }) {
    switch (this) {
      case ButtonType.elevated:
        return elevated?.call() ?? flat.call();
      case ButtonType.flat:
      default:
        return flat.call();
    }
  }
}
