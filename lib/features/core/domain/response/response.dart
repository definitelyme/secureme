abstract class Response {
  String? get code;
  String? get error;
  String get message;
  String? get details;
  bool get show;
}

class UnExpectedFailure implements Response {
  @override
  final String message;
  @override
  final String? error;
  @override
  final String? code;
  @override
  final String? details;
  @override
  final bool show;

  UnExpectedFailure({
    required this.message,
    this.error,
    this.code,
    this.details,
    this.show = true,
  });
}
