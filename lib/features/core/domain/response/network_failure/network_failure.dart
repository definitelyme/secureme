library network_failure.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secureme/features/core/domain/response/index.dart';

part 'network_failure.freezed.dart';

@freezed
@immutable
class NetworkFailure with _$NetworkFailure, Response {
  const NetworkFailure._();

  const factory NetworkFailure.notConnected({
    String? code,
    String? error,
    @Default('You are offline!') String message,
    String? details,
    @Default(true) bool show,
  }) = _NoInternetConnectivity;

  const factory NetworkFailure.poorInternetConnection({
    String? code,
    String? error,
    @Default('Poor Internet Connection!') String message,
    String? details,
    @Default(true) bool show,
  }) = _PoorInternetConnection;
}
