import 'package:dartz/dartz.dart';
import 'package:secureme/features/core/domain/entities/field_object.dart';
import 'package:secureme/features/core/domain/response/index.dart';
import 'package:secureme/features/core/domain/validator/validator.dart';

class Password extends FieldObject<String> {
  static const Password DEFAULT = Password._(Right(''));

  @override
  final Either<FieldObjectException<String>, String> value;

  factory Password(String password, {FIELD_VALIDATION? mode}) {
    return Password._(
      Validator.passwordValidator(
        password,
        validationMode: mode,
      ),
    );
  }

  const Password._(this.value);
}
