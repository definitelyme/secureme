abstract class Response {
  String? get code;
  String get message;
}

class UnExpectedFailure implements Response {
  @override
  final String message;
  @override
  final String? code;

  UnExpectedFailure({
    required this.message,
    this.code,
  });
}
