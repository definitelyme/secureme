// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of server_field_errors.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerFieldErrors _$ServerFieldErrorsFromJson(Map<String, dynamic> json) {
  return _ServerFieldErrors.fromJson(json);
}

/// @nodoc
class _$ServerFieldErrorsTearOff {
  const _$ServerFieldErrorsTearOff();

  _ServerFieldErrors call(
      {@JsonKey(includeIfNull: false) List<dynamic>? uid,
      @JsonKey(includeIfNull: false) List<dynamic>? channel,
      @JsonKey(includeIfNull: false) List<dynamic>? role,
      @JsonKey(includeIfNull: false) List<dynamic>? token}) {
    return _ServerFieldErrors(
      uid: uid,
      channel: channel,
      role: role,
      token: token,
    );
  }

  ServerFieldErrors fromJson(Map<String, Object> json) {
    return ServerFieldErrors.fromJson(json);
  }
}

/// @nodoc
const $ServerFieldErrors = _$ServerFieldErrorsTearOff();

/// @nodoc
mixin _$ServerFieldErrors {
  @JsonKey(includeIfNull: false)
  List<dynamic>? get uid => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  List<dynamic>? get channel => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  List<dynamic>? get role => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  List<dynamic>? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerFieldErrorsCopyWith<ServerFieldErrors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerFieldErrorsCopyWith<$Res> {
  factory $ServerFieldErrorsCopyWith(
          ServerFieldErrors value, $Res Function(ServerFieldErrors) then) =
      _$ServerFieldErrorsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false) List<dynamic>? uid,
      @JsonKey(includeIfNull: false) List<dynamic>? channel,
      @JsonKey(includeIfNull: false) List<dynamic>? role,
      @JsonKey(includeIfNull: false) List<dynamic>? token});
}

/// @nodoc
class _$ServerFieldErrorsCopyWithImpl<$Res>
    implements $ServerFieldErrorsCopyWith<$Res> {
  _$ServerFieldErrorsCopyWithImpl(this._value, this._then);

  final ServerFieldErrors _value;
  // ignore: unused_field
  final $Res Function(ServerFieldErrors) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? channel = freezed,
    Object? role = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      channel: channel == freezed
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$ServerFieldErrorsCopyWith<$Res>
    implements $ServerFieldErrorsCopyWith<$Res> {
  factory _$ServerFieldErrorsCopyWith(
          _ServerFieldErrors value, $Res Function(_ServerFieldErrors) then) =
      __$ServerFieldErrorsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false) List<dynamic>? uid,
      @JsonKey(includeIfNull: false) List<dynamic>? channel,
      @JsonKey(includeIfNull: false) List<dynamic>? role,
      @JsonKey(includeIfNull: false) List<dynamic>? token});
}

/// @nodoc
class __$ServerFieldErrorsCopyWithImpl<$Res>
    extends _$ServerFieldErrorsCopyWithImpl<$Res>
    implements _$ServerFieldErrorsCopyWith<$Res> {
  __$ServerFieldErrorsCopyWithImpl(
      _ServerFieldErrors _value, $Res Function(_ServerFieldErrors) _then)
      : super(_value, (v) => _then(v as _ServerFieldErrors));

  @override
  _ServerFieldErrors get _value => super._value as _ServerFieldErrors;

  @override
  $Res call({
    Object? uid = freezed,
    Object? channel = freezed,
    Object? role = freezed,
    Object? token = freezed,
  }) {
    return _then(_ServerFieldErrors(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      channel: channel == freezed
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServerFieldErrors extends _ServerFieldErrors {
  const _$_ServerFieldErrors(
      {@JsonKey(includeIfNull: false) this.uid,
      @JsonKey(includeIfNull: false) this.channel,
      @JsonKey(includeIfNull: false) this.role,
      @JsonKey(includeIfNull: false) this.token})
      : super._();

  factory _$_ServerFieldErrors.fromJson(Map<String, dynamic> json) =>
      _$_$_ServerFieldErrorsFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final List<dynamic>? uid;
  @override
  @JsonKey(includeIfNull: false)
  final List<dynamic>? channel;
  @override
  @JsonKey(includeIfNull: false)
  final List<dynamic>? role;
  @override
  @JsonKey(includeIfNull: false)
  final List<dynamic>? token;

  @override
  String toString() {
    return 'ServerFieldErrors(uid: $uid, channel: $channel, role: $role, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServerFieldErrors &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.channel, channel) ||
                const DeepCollectionEquality()
                    .equals(other.channel, channel)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(channel) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$ServerFieldErrorsCopyWith<_ServerFieldErrors> get copyWith =>
      __$ServerFieldErrorsCopyWithImpl<_ServerFieldErrors>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ServerFieldErrorsToJson(this);
  }
}

abstract class _ServerFieldErrors extends ServerFieldErrors {
  const factory _ServerFieldErrors(
          {@JsonKey(includeIfNull: false) List<dynamic>? uid,
          @JsonKey(includeIfNull: false) List<dynamic>? channel,
          @JsonKey(includeIfNull: false) List<dynamic>? role,
          @JsonKey(includeIfNull: false) List<dynamic>? token}) =
      _$_ServerFieldErrors;
  const _ServerFieldErrors._() : super._();

  factory _ServerFieldErrors.fromJson(Map<String, dynamic> json) =
      _$_ServerFieldErrors.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  List<dynamic>? get uid => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  List<dynamic>? get channel => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  List<dynamic>? get role => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  List<dynamic>? get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ServerFieldErrorsCopyWith<_ServerFieldErrors> get copyWith =>
      throw _privateConstructorUsedError;
}
