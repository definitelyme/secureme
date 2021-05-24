// GENERATED CODE - DO NOT MODIFY BY HAND

part of server_failure_response.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServerFailureResponse _$_$_ServerFailureResponseFromJson(
    Map<String, dynamic> json) {
  return _$_ServerFailureResponse(
    message: json['message'] as String,
    errors: json['errors'] == null
        ? null
        : ServerFieldErrors.fromJson(json['errors'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ServerFailureResponseToJson(
    _$_ServerFailureResponse instance) {
  final val = <String, dynamic>{
    'message': instance.message,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors);
  return val;
}
