import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secureme/features/core/domain/response/index.dart';

part 'info_response.freezed.dart';

@freezed
@immutable
class InfoResponse with _$InfoResponse, Response {
  const InfoResponse._();

  const factory InfoResponse({
    String? code,
    String? error,
    required String message,
    String? details,
    @Default(true) bool popRoute,
    @Default(true) bool show,
  }) = _InfoResponse;
}
