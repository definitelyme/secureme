import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secureme/features/auth/domain/auth_provider_type.dart';
import 'package:secureme/features/core/data/data.dart';
import 'package:secureme/features/core/domain/entities/entities.dart';
import 'package:secureme/features/core/domain/response/index.dart';

part 'auth_failure.freezed.dart';

@freezed
@immutable
class AuthFailure with _$AuthFailure, Response {
  const factory AuthFailure({
    String? code,
    required String message,
  }) = _AuthFailure;

  const factory AuthFailure.conflict({
    String? code,
    required String message,
    required EmailAddress email,
    required AuthProviderType provider,
    required Object credentials,
  }) = _AccountAlreadyExists;

  factory AuthFailure.cancelledAction() => const AuthFailure(message: 'Aborted!');

  factory AuthFailure.invalidCredentials({String? message}) => AuthFailure(
        code: INVALID_CREDENTIAL,
        message: message ?? 'These credentials do not match our records.',
      );

  factory AuthFailure.weakPassword({String? message}) => const AuthFailure(
        code: WEAK_PASSWORD,
        message: 'Password is weak.',
      );

  factory AuthFailure.noInternetConnection({String? message}) => AuthFailure(
        code: 'ERROR_NO_INTERNET_CONNECTION',
        message: message ?? 'Unstable internet connection!',
      );

  factory AuthFailure.userAccountNotFound({String? message}) => AuthFailure(
        code: USER_NOT_FOUND,
        message: message ?? 'E-mail address not found!',
      );

  factory AuthFailure.userAccountDisabled({String? message}) => AuthFailure(
        code: USER_DISABLED,
        message:
            message ?? 'Account has been disabled.\nPlease contact Support.',
      );

  factory AuthFailure.emailAlreadyInUse({String? message}) => AuthFailure(
        code: EMAIL_ALREADY_IN_USE,
        message: message ?? 'E-mail address already in use!',
      );

  factory AuthFailure.tooManyRequests({String? message}) => AuthFailure(
        code: TOO_MANY_REQUESTS,
        message: message ??
            'Too many unsuccessful login attempts! '
                '\n\nWe have blocked all requests from this device due to unusual activity. Try again in 30 seconds.',
      );

  factory AuthFailure.expiredOrInvalidToken({String? message}) => AuthFailure(
        code: EXPIRED_ACTION_CODE,
        message: message ??
            'Malformed or expired Action Code! Please sign in again.',
      );

  factory AuthFailure.unknownFailure({String? code, String? message}) =>
      AuthFailure(
        code: code ?? 'unknown',
        message: message != null
            ? 'Unknown: $message'
            : 'Unknown failure contact support.',
      );
}
