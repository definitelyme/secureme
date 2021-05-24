library server_field_errors.dart;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_field_errors.g.dart';
part 'server_field_errors.freezed.dart';

@freezed
@immutable
class ServerFieldErrors with _$ServerFieldErrors {
  const ServerFieldErrors._();

  const factory ServerFieldErrors({
    @JsonKey(includeIfNull: false) List<dynamic>? uid,
    @JsonKey(includeIfNull: false) List<dynamic>? channel,
    @JsonKey(includeIfNull: false) List<dynamic>? role,
    @JsonKey(includeIfNull: false) List<dynamic>? token,
  }) = _ServerFieldErrors;

  factory ServerFieldErrors.fromJson(Map<String, dynamic> json) =>
      _$ServerFieldErrorsFromJson(json);
}
