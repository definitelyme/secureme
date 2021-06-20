// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  _AuthFailure call({String? code, required String message}) {
    return _AuthFailure(
      code: code,
      message: message,
    );
  }

  _AccountAlreadyExists conflict(
      {String? code,
      required String message,
      required EmailAddress email,
      required AuthProviderType provider,
      required Object credentials}) {
    return _AccountAlreadyExists(
      code: code,
      message: message,
      email: email,
      provider: provider,
      credentials: credentials,
    );
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  String? get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? code, String message) $default, {
    required TResult Function(String? code, String message, EmailAddress email,
            AuthProviderType provider, Object credentials)
        conflict,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? code, String message)? $default, {
    TResult Function(String? code, String message, EmailAddress email,
            AuthProviderType provider, Object credentials)?
        conflict,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthFailure value) $default, {
    required TResult Function(_AccountAlreadyExists value) conflict,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthFailure value)? $default, {
    TResult Function(_AccountAlreadyExists value)? conflict,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthFailureCopyWith<AuthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
  $Res call({String? code, String message});
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthFailureCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$AuthFailureCopyWith(
          _AuthFailure value, $Res Function(_AuthFailure) then) =
      __$AuthFailureCopyWithImpl<$Res>;
  @override
  $Res call({String? code, String message});
}

/// @nodoc
class __$AuthFailureCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$AuthFailureCopyWith<$Res> {
  __$AuthFailureCopyWithImpl(
      _AuthFailure _value, $Res Function(_AuthFailure) _then)
      : super(_value, (v) => _then(v as _AuthFailure));

  @override
  _AuthFailure get _value => super._value as _AuthFailure;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_AuthFailure(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthFailure with DiagnosticableTreeMixin implements _AuthFailure {
  const _$_AuthFailure({this.code, required this.message});

  @override
  final String? code;
  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure(code: $code, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthFailure &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$AuthFailureCopyWith<_AuthFailure> get copyWith =>
      __$AuthFailureCopyWithImpl<_AuthFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? code, String message) $default, {
    required TResult Function(String? code, String message, EmailAddress email,
            AuthProviderType provider, Object credentials)
        conflict,
  }) {
    return $default(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? code, String message)? $default, {
    TResult Function(String? code, String message, EmailAddress email,
            AuthProviderType provider, Object credentials)?
        conflict,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthFailure value) $default, {
    required TResult Function(_AccountAlreadyExists value) conflict,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthFailure value)? $default, {
    TResult Function(_AccountAlreadyExists value)? conflict,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _AuthFailure implements AuthFailure {
  const factory _AuthFailure({String? code, required String message}) =
      _$_AuthFailure;

  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthFailureCopyWith<_AuthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AccountAlreadyExistsCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$AccountAlreadyExistsCopyWith(_AccountAlreadyExists value,
          $Res Function(_AccountAlreadyExists) then) =
      __$AccountAlreadyExistsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? code,
      String message,
      EmailAddress email,
      AuthProviderType provider,
      Object credentials});
}

/// @nodoc
class __$AccountAlreadyExistsCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$AccountAlreadyExistsCopyWith<$Res> {
  __$AccountAlreadyExistsCopyWithImpl(
      _AccountAlreadyExists _value, $Res Function(_AccountAlreadyExists) _then)
      : super(_value, (v) => _then(v as _AccountAlreadyExists));

  @override
  _AccountAlreadyExists get _value => super._value as _AccountAlreadyExists;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? email = freezed,
    Object? provider = freezed,
    Object? credentials = freezed,
  }) {
    return _then(_AccountAlreadyExists(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AuthProviderType,
      credentials: credentials == freezed
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_AccountAlreadyExists
    with DiagnosticableTreeMixin
    implements _AccountAlreadyExists {
  const _$_AccountAlreadyExists(
      {this.code,
      required this.message,
      required this.email,
      required this.provider,
      required this.credentials});

  @override
  final String? code;
  @override
  final String message;
  @override
  final EmailAddress email;
  @override
  final AuthProviderType provider;
  @override
  final Object credentials;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.conflict(code: $code, message: $message, email: $email, provider: $provider, credentials: $credentials)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure.conflict'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('provider', provider))
      ..add(DiagnosticsProperty('credentials', credentials));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountAlreadyExists &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)) &&
            (identical(other.credentials, credentials) ||
                const DeepCollectionEquality()
                    .equals(other.credentials, credentials)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(provider) ^
      const DeepCollectionEquality().hash(credentials);

  @JsonKey(ignore: true)
  @override
  _$AccountAlreadyExistsCopyWith<_AccountAlreadyExists> get copyWith =>
      __$AccountAlreadyExistsCopyWithImpl<_AccountAlreadyExists>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? code, String message) $default, {
    required TResult Function(String? code, String message, EmailAddress email,
            AuthProviderType provider, Object credentials)
        conflict,
  }) {
    return conflict(code, message, email, provider, credentials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? code, String message)? $default, {
    TResult Function(String? code, String message, EmailAddress email,
            AuthProviderType provider, Object credentials)?
        conflict,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict(code, message, email, provider, credentials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthFailure value) $default, {
    required TResult Function(_AccountAlreadyExists value) conflict,
  }) {
    return conflict(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthFailure value)? $default, {
    TResult Function(_AccountAlreadyExists value)? conflict,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict(this);
    }
    return orElse();
  }
}

abstract class _AccountAlreadyExists implements AuthFailure {
  const factory _AccountAlreadyExists(
      {String? code,
      required String message,
      required EmailAddress email,
      required AuthProviderType provider,
      required Object credentials}) = _$_AccountAlreadyExists;

  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  AuthProviderType get provider => throw _privateConstructorUsedError;
  Object get credentials => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AccountAlreadyExistsCopyWith<_AccountAlreadyExists> get copyWith =>
      throw _privateConstructorUsedError;
}
