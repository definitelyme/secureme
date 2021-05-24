import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secureme/features/core/domain/response/index.dart';

part 'success_response.freezed.dart';

@freezed
@immutable
class SuccessResponse with _$SuccessResponse, Response {
  const SuccessResponse._();

  const factory SuccessResponse({
    String? code,
    String? error,
    required String message,
    String? details,
    @Default(true) bool popRoute,
    @Default(true) bool show,
  }) = _SuccessResponse;
}
