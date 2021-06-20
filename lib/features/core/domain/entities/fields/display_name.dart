import 'package:dartz/dartz.dart';
import 'package:secureme/features/core/domain/entities/field_object.dart';
import 'package:secureme/features/core/domain/response/index.dart';
import 'package:secureme/features/core/domain/validator/validator.dart';

class DisplayName extends FieldObject<String> {
  static const DisplayName DEFAULT = DisplayName._(Right(''));

  @override
  final Either<FieldObjectException<String>, String> value;

  factory DisplayName(String input) {
    return DisplayName._(Validator.isEmpty(input));
  }

  const DisplayName._(this.value);
}
