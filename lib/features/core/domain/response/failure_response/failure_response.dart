import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secureme/features/core/domain/response/index.dart';

part 'failure_response.freezed.dart';

@freezed
@immutable
class FailureResponse with _$FailureResponse, Response {
  const FailureResponse._();

  const factory FailureResponse({
    String? code,
    String? error,
    required String message,
    String? details,
    @Default(true) bool popRoute,
    @Default(true) bool show,
  }) = _FailureResponse;

  factory FailureResponse.timeout() =>
      const FailureResponse(message: 'Connection Timeout! Please try again.');

  factory FailureResponse.receiveTimeout() =>
      const FailureResponse(message: 'Connection Timeout! Please try again.');

  factory FailureResponse.aborted(String message) =>
      FailureResponse(message: message);

  factory FailureResponse.alreadyExists(String message) =>
      FailureResponse(message: message);

  factory FailureResponse.ok(String message) =>
      FailureResponse(message: message);

  factory FailureResponse.cancelled(String message) =>
      FailureResponse(message: message);

  factory FailureResponse.notFound(String message) =>
      FailureResponse(message: message);

  factory FailureResponse.invalidArguments(String message) =>
      FailureResponse(message: message);

  factory FailureResponse.deadlineExceeded(String message) =>
      FailureResponse(message: message);

  factory FailureResponse.dataLoss(String message) =>
      FailureResponse(message: message);

  factory FailureResponse.outOfRange(String message) =>
      FailureResponse(message: message);

  factory FailureResponse.insufficientPermissions(String message) =>
      FailureResponse(message: message);

  factory FailureResponse.unAuthenticated(String message) =>
      FailureResponse(message: message);

  factory FailureResponse.unAvailable(String message) =>
      FailureResponse(message: message);

  factory FailureResponse.unImplemented(String message) =>
      FailureResponse(message: message);

  factory FailureResponse.unknown({
    required String message,
    String? code,
  }) =>
      FailureResponse(message: message, code: code);
}
