library server_failure_response.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secureme/features/core/data/models/index.dart';
import 'package:secureme/features/core/domain/response/index.dart';

part 'server_failure_response.g.dart';
part 'server_failure_response.freezed.dart';

@freezed
@immutable
class ServerFailureResponse with _$ServerFailureResponse, Response {
  const ServerFailureResponse._();

  const factory ServerFailureResponse({
    @JsonKey(ignore: true, includeIfNull: false) String? code,
    @JsonKey(ignore: true, includeIfNull: false) String? error,
    @JsonKey(includeIfNull: false) required String message,
    @JsonKey(ignore: true, includeIfNull: false) String? details,
    @JsonKey(includeIfNull: false) ServerFieldErrors? errors,
    @JsonKey(ignore: true, includeIfNull: false) @Default(true) bool popRoute,
    @JsonKey(ignore: true, includeIfNull: false) @Default(true) bool show,
  }) = _ServerFailureResponse;

  factory ServerFailureResponse.fromJson(Map<String, dynamic> json) =>
      _$ServerFailureResponseFromJson(json);

  factory ServerFailureResponse.unknown({
    required String message,
    String? code,
  }) =>
      ServerFailureResponse(message: message, code: code);
}
