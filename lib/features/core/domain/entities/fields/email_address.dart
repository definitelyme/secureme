import 'package:dartz/dartz.dart';
import 'package:secureme/features/core/domain/entities/field_object.dart';
import 'package:secureme/features/core/domain/response/index.dart';
import 'package:secureme/features/core/domain/validator/validator.dart';

class EmailAddress extends FieldObject<String> {
  static const EmailAddress DEFAULT = EmailAddress._(Right(''));
  static const String kPlaceholder = 'johndoe@email.com';

  @override
  final Either<FieldObjectException<String>, String> value;

  factory EmailAddress(String email) {
    return EmailAddress._(Validator.emailValidator(email));
  }

  const EmailAddress._(this.value);
}
