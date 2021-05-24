import 'package:json_annotation/json_annotation.dart';

class TimestampConverter implements JsonConverter<DateTime?, String?> {
  const TimestampConverter();

  @override
  DateTime? fromJson(String? value) => DateTime.tryParse(value!);

  @override
  String? toJson(DateTime? instance) =>
      instance != null ? instance.toIso8601String() : null;
}
