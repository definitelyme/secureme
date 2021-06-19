import 'package:built_collection/built_collection.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:secureme/features/core/domain/entities/entities.dart';
import 'package:secureme/features/core/domain/response/index.dart';
import 'package:secureme/utils/utils.dart';

const int MIN_PASSWORD_LENGTH = 6;
const int MIN_USERNAME_LENGTH = 6;
const Pattern emailPattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
const Pattern upperCasePattern = '(.*[A-Z].*)';
const Pattern numberPattern = '[0-9]+';
const Pattern symbolPattern = r"[-!$@%^&#*()_+|~=`{}\[\]:\;'<>?\\,.\/]";
const Pattern onlyNumbersPattern = '^[0-9]*\$';
const Pattern datePattern =
    r'(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)[0-9]{2}';

enum FIELD_VALIDATION { NONE, BASIC, DEEP }

class Validator {
  Validator._();

  static Either<FieldObjectException<String>, T> isEmpty<T>(dynamic value) {
    // Returns the string without any leading and trailing whitespace
    if (value == null) return left(FieldObjectException.empty());
    if (value is String && (value.trim().isEmpty || value.trim().isEmpty))
      return left(FieldObjectException.empty());
    if (value is KtList && (value.isEmpty()))
      return left(FieldObjectException.empty());
    if (value is BuiltList && (value.isEmpty))
      return left(FieldObjectException.empty());

    return right((value is String ? value.trim() as T : value as T));
  }

  static Either<FieldObjectException<String>, String> usernameValidator(
      String value) {
    var clean = value.trim();
    var shortUsername = clean.length < MIN_PASSWORD_LENGTH;

    if (clean.isEmpty || clean.isEmpty)
      return left(FieldObjectException.empty());
    if (shortUsername)
      return left(
          FieldObjectException.invalid(message: SHORT_USERNAME_MESSAGE));

    return right(clean);
  }

  static Either<FieldObjectException<String>, String> emailValidator(
    String email,
  ) {
    // Returns the string without any leading and trailing whitespace
    email = email.trim();

    if (email.isEmpty || email.isEmpty) {
      return left(FieldObjectException.empty());
    }
    if (!RegExp('$emailPattern').hasMatch(email)) {
      return left(FieldObjectException.invalid(message: INVALID_EMAIL_MESSAGE));
    }

    return right(email);
  }

  static Either<FieldObjectException<String>, String> passwordValidator(
    String password, {
    FIELD_VALIDATION? validationMode = FIELD_VALIDATION.DEEP,
  }) {
    var shortPassword = password.length < MIN_PASSWORD_LENGTH;
    var containsUpperCase = RegExp('$upperCasePattern').hasMatch(password);
    var containsNumber = RegExp('$numberPattern').hasMatch(password);
    // bool containsSymbol = RegExp(symbolPattern).hasMatch(password);

    switch (validationMode) {
      case FIELD_VALIDATION.NONE:
        break;
      case FIELD_VALIDATION.BASIC:
        if (password.isEmpty || password.isEmpty)
          return left(FieldObjectException.empty());
        break;
      case FIELD_VALIDATION.DEEP:
      default:
        if (password.isEmpty || password.isEmpty)
          return left(FieldObjectException.empty());
        if (shortPassword)
          return left(
              FieldObjectException.invalid(message: SHORT_PASSWORD_MESSAGE));
        if (!containsUpperCase)
          return left(
              FieldObjectException.invalid(message: UPPERCASE_CHAR_MESSAGE));
        if (!containsNumber)
          return left(
              FieldObjectException.invalid(message: NUMBER_CHAR_MESSAGE));
        // if (!containsSymbol) return left(FieldObjectException.invalid(message: SYMBOL_MESSAGE));
        break;
    }

    return right(password);
  }

  static Either<FieldObjectException<String>, String> phoneNumberValidator(
    String phone,
    Country country, {
    FIELD_VALIDATION? mode = FIELD_VALIDATION.DEEP,
  }) {
    var clean = phone.trim();
    var containsOnlyDigits =
        RegExp(r'^[0-9]+$', multiLine: true).hasMatch(clean);

    switch (mode) {
      case FIELD_VALIDATION.NONE:
        break;
      case FIELD_VALIDATION.BASIC:
        if (clean.isEmpty || clean.isEmpty)
          return left(FieldObjectException.empty());
        ;
        break;
      case FIELD_VALIDATION.DEEP:
      default:
        if (clean.isEmpty || clean.isEmpty)
          return left(FieldObjectException.empty());
        if (clean.length != country.digitsCount)
          return left(FieldObjectException.invalid(
              message:
                  'Required: ${country.digitsCount - clean.length} digits.'));
        if (!containsOnlyDigits)
          return left(
              FieldObjectException.invalid(message: INVALID_PHONE_NUMBER));
        break;
    }

    return right(clean);
  }

  static Either<FieldObjectException<String>, String> otpCodeValidator(
    String code, {
    int max = 6,
  }) {
    var clean = code.trim();
    if (clean.isEmpty || clean.isEmpty)
      return left(FieldObjectException.empty());
    if (clean.length < max)
      return left(FieldObjectException.invalid(message: INVALID_OTP_CODE));
    return right(clean);
  }

  static Either<FieldObjectException<String>, String> multilineValidator(
      String input) {
    var value = input.trim();
    if (value.contains('\n'))
      return left(
          FieldObjectException.invalid(message: 'Field must be single line'));
    return right(value);
  }

  static Either<FieldObjectException<String>, T> validateColor<T>({
    required T input,
    bool useStandard = true,
  }) {
    if (input is String) {
      var clean = input.trim();
      if (clean.isEmpty || clean.isEmpty)
        return left(FieldObjectException.empty());

      if (useStandard && !clean.caseInsensitiveContains('#'))
        return left(
            FieldObjectException.invalid(message: 'Invalid Color Hex!'));
    } else if (input == null) return left(FieldObjectException.empty());

    return right(input);
  }

  static Either<FieldObjectException<String>, KtList<T>> maxListLength<T>(
    KtList<T> input,
    int max,
  ) {
    if (input.size > max)
      return left(FieldObjectException.exceedsLength(
          message: 'Value exceed max: $max'));
    return right(input);
  }

  static Either<FieldObjectException<String>, String> maxStringLength(
      String input,
      [int max = 500]) {
    if (input.length > max)
      return left(FieldObjectException.exceedsLength(
          message: 'Value exceeds max length!'));
    return right(input);
  }

  static Either<FieldObjectException<String>, String> onlyDigits(
    String input, [
    String message = INVALID_FIELD_MESSAGE,
  ]) {
    var clean = input.trim();

    var containsOnlyDigits =
        RegExp(r'^[0-9]+$', multiLine: true).hasMatch(clean);

    if (!containsOnlyDigits)
      return left(FieldObjectException.invalid(message: message));

    return right(input);
  }

  static Either<FieldObjectException<String>, String> cardNumber(String input) {
    var clean = input.trim();

    var containsOnlyDigits =
        RegExp(r'^[0-9 ]+$', multiLine: true).hasMatch(clean);

    if (!containsOnlyDigits)
      return left(FieldObjectException.invalid(message: INVALID_CARD_NUMBER));

    return right(input);
  }

  static Either<FieldObjectException<String>, String> cardExpiration(
    String input,
  ) {
    final _input = input.trim();

    String toOriginalFormatString(DateTime dateTime) {
      final y = dateTime.year.toString().padLeft(4, '0');
      final m = dateTime.month.toString().padLeft(2, '0');
      final d = dateTime.day.toString().padLeft(2, '0');

      print('toOriginalFormatString =========> $y$m$d');
      return '$y$m$d';
    }

    bool isValidDate(String input) {
      try {
        final date = DateTime.parse(input);
        final formattedString = toOriginalFormatString(date);

        print('Input: =========> $input}');
        print('isValidDate =========> ${input == formattedString}');

        return input == formattedString;
      } catch (e) {
        return false;
      }
    }

    // if (val)

    return right(input);
  }

  static Either<FieldObjectException<String>, DateTime> isValidDate(
    DateTime date,
  ) {
    if (!date.isNull) {
      var day = date.day < 10 ? '0${date.day}' : date.day.toString();
      var month = date.month < 10 ? '0${date.month}' : date.month.toString();
      var _date = '$day/$month/${date.year}';

      var isValid = RegExp(
              r'(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)[0-9]{2}')
          .hasMatch(_date);

      if (!isValid)
        return left(
          FieldObjectException.invalid(message: INVALID_DATE_OF_BIRTH),
        );
    }

    return right(date);
  }
}
