import 'package:dartz/dartz.dart';
import 'package:secureme/features/core/domain/entities/field_object.dart';
import 'package:secureme/features/core/domain/response/index.dart';
import 'package:secureme/features/core/domain/validator/validator.dart';

class PhotoField extends FieldObject<String> {
  static const PhotoField DEFAULT = PhotoField._(Right(''));

  @override
  final Either<FieldObjectException<String>, String> value;

  factory PhotoField(String input) {
    return PhotoField._(Validator.isEmpty(input));
  }

  const PhotoField._(this.value);
}
