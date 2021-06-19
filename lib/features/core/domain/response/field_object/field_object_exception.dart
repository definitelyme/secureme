import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secureme/features/core/domain/validator/validator.dart';

part 'field_object_exception.freezed.dart';

// Validation messages
const String REQUIRED_FIELD_MESSAGE = 'Field is required!';
const String INVALID_FIELD_MESSAGE = 'Provide a valid input!';
const String INVALID_EMAIL_MESSAGE = 'Provide a valid e-mail';
const String SHORT_PASSWORD_MESSAGE =
    'Password must be at least $MIN_PASSWORD_LENGTH characters.';
const String SHORT_USERNAME_MESSAGE =
    'Username must be at least $MIN_USERNAME_LENGTH characters.';
const String UPPERCASE_CHAR_MESSAGE = 'Must contain uppercase character.';
const String NUMBER_CHAR_MESSAGE = 'Password must contain a number!';
const String SYMBOL_MESSAGE = 'Password must contain a symbol! (e.g: @#)';
const INVALID_PHONE_NUMBER = 'Invalid phone number!';
const INVALID_OTP_CODE = 'Invalid OTP code.';
const INVALID_CARD_NUMBER = 'Provide a valid Card Number.';
const INVALID_CARDHOLDER_NAME = 'Provide a Cardholder Name.';
const INVALID_EXPIRY_DATE = 'Provide a valid Date.';
const INVALID_CVV = 'Provide a valid Card Verification Value.';
const INVALID_DATE_OF_BIRTH = 'Provide a valid Date of Birth!';

@freezed
class FieldObjectException<T> with _$FieldObjectException<T> {
  const factory FieldObjectException({required String message}) =
      _FieldObjectException<T>;

  factory FieldObjectException.empty({String? message}) =>
      FieldObjectException(message: message ?? REQUIRED_FIELD_MESSAGE);

  factory FieldObjectException.invalid({String? message}) =>
      FieldObjectException(message: message ?? INVALID_FIELD_MESSAGE);

  factory FieldObjectException.exceedsLength({String? message}) =>
      FieldObjectException(message: message ?? INVALID_FIELD_MESSAGE);
}
