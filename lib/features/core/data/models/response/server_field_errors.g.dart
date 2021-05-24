// GENERATED CODE - DO NOT MODIFY BY HAND

part of server_field_errors.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServerFieldErrors _$_$_ServerFieldErrorsFromJson(Map<String, dynamic> json) {
  return _$_ServerFieldErrors(
    uid: json['uid'] as List<dynamic>?,
    channel: json['channel'] as List<dynamic>?,
    role: json['role'] as List<dynamic>?,
    token: json['token'] as List<dynamic>?,
  );
}

Map<String, dynamic> _$_$_ServerFieldErrorsToJson(
    _$_ServerFieldErrors instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('channel', instance.channel);
  writeNotNull('role', instance.role);
  writeNotNull('token', instance.token);
  return val;
}
