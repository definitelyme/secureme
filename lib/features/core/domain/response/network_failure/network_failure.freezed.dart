// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of network_failure.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NetworkFailureTearOff {
  const _$NetworkFailureTearOff();

  _NoInternetConnectivity notConnected(
      {String? code,
      String? error,
      String message = 'You are offline!',
      String? details,
      bool show = true}) {
    return _NoInternetConnectivity(
      code: code,
      error: error,
      message: message,
      details: details,
      show: show,
    );
  }

  _PoorInternetConnection poorInternetConnection(
      {String? code,
      String? error,
      String message = 'Poor Internet Connection!',
      String? details,
      bool show = true}) {
    return _PoorInternetConnection(
      code: code,
      error: error,
      message: message,
      details: details,
      show: show,
    );
  }
}

/// @nodoc
const $NetworkFailure = _$NetworkFailureTearOff();

/// @nodoc
mixin _$NetworkFailure {
  String? get code => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;
  bool get show => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? code, String? error, String message,
            String? details, bool show)
        notConnected,
    required TResult Function(String? code, String? error, String message,
            String? details, bool show)
        poorInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? code, String? error, String message,
            String? details, bool show)?
        notConnected,
    TResult Function(String? code, String? error, String message,
            String? details, bool show)?
        poorInternetConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnectivity value) notConnected,
    required TResult Function(_PoorInternetConnection value)
        poorInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnectivity value)? notConnected,
    TResult Function(_PoorInternetConnection value)? poorInternetConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkFailureCopyWith<NetworkFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res>;
  $Res call(
      {String? code,
      String? error,
      String message,
      String? details,
      bool show});
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._value, this._then);

  final NetworkFailure _value;
  // ignore: unused_field
  final $Res Function(NetworkFailure) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? error = freezed,
    Object? message = freezed,
    Object? details = freezed,
    Object? show = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$NoInternetConnectivityCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$NoInternetConnectivityCopyWith(_NoInternetConnectivity value,
          $Res Function(_NoInternetConnectivity) then) =
      __$NoInternetConnectivityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? code,
      String? error,
      String message,
      String? details,
      bool show});
}

/// @nodoc
class __$NoInternetConnectivityCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res>
    implements _$NoInternetConnectivityCopyWith<$Res> {
  __$NoInternetConnectivityCopyWithImpl(_NoInternetConnectivity _value,
      $Res Function(_NoInternetConnectivity) _then)
      : super(_value, (v) => _then(v as _NoInternetConnectivity));

  @override
  _NoInternetConnectivity get _value => super._value as _NoInternetConnectivity;

  @override
  $Res call({
    Object? code = freezed,
    Object? error = freezed,
    Object? message = freezed,
    Object? details = freezed,
    Object? show = freezed,
  }) {
    return _then(_NoInternetConnectivity(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NoInternetConnectivity extends _NoInternetConnectivity {
  const _$_NoInternetConnectivity(
      {this.code,
      this.error,
      this.message = 'You are offline!',
      this.details,
      this.show = true})
      : super._();

  @override
  final String? code;
  @override
  final String? error;
  @JsonKey(defaultValue: 'You are offline!')
  @override
  final String message;
  @override
  final String? details;
  @JsonKey(defaultValue: true)
  @override
  final bool show;

  @override
  String toString() {
    return 'NetworkFailure.notConnected(code: $code, error: $error, message: $message, details: $details, show: $show)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoInternetConnectivity &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
            (identical(other.show, show) ||
                const DeepCollectionEquality().equals(other.show, show)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(details) ^
      const DeepCollectionEquality().hash(show);

  @JsonKey(ignore: true)
  @override
  _$NoInternetConnectivityCopyWith<_NoInternetConnectivity> get copyWith =>
      __$NoInternetConnectivityCopyWithImpl<_NoInternetConnectivity>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? code, String? error, String message,
            String? details, bool show)
        notConnected,
    required TResult Function(String? code, String? error, String message,
            String? details, bool show)
        poorInternetConnection,
  }) {
    return notConnected(code, error, message, details, show);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? code, String? error, String message,
            String? details, bool show)?
        notConnected,
    TResult Function(String? code, String? error, String message,
            String? details, bool show)?
        poorInternetConnection,
    required TResult orElse(),
  }) {
    if (notConnected != null) {
      return notConnected(code, error, message, details, show);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnectivity value) notConnected,
    required TResult Function(_PoorInternetConnection value)
        poorInternetConnection,
  }) {
    return notConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnectivity value)? notConnected,
    TResult Function(_PoorInternetConnection value)? poorInternetConnection,
    required TResult orElse(),
  }) {
    if (notConnected != null) {
      return notConnected(this);
    }
    return orElse();
  }
}

abstract class _NoInternetConnectivity extends NetworkFailure {
  const factory _NoInternetConnectivity(
      {String? code,
      String? error,
      String message,
      String? details,
      bool show}) = _$_NoInternetConnectivity;
  const _NoInternetConnectivity._() : super._();

  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  String? get details => throw _privateConstructorUsedError;
  @override
  bool get show => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NoInternetConnectivityCopyWith<_NoInternetConnectivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PoorInternetConnectionCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$PoorInternetConnectionCopyWith(_PoorInternetConnection value,
          $Res Function(_PoorInternetConnection) then) =
      __$PoorInternetConnectionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? code,
      String? error,
      String message,
      String? details,
      bool show});
}

/// @nodoc
class __$PoorInternetConnectionCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res>
    implements _$PoorInternetConnectionCopyWith<$Res> {
  __$PoorInternetConnectionCopyWithImpl(_PoorInternetConnection _value,
      $Res Function(_PoorInternetConnection) _then)
      : super(_value, (v) => _then(v as _PoorInternetConnection));

  @override
  _PoorInternetConnection get _value => super._value as _PoorInternetConnection;

  @override
  $Res call({
    Object? code = freezed,
    Object? error = freezed,
    Object? message = freezed,
    Object? details = freezed,
    Object? show = freezed,
  }) {
    return _then(_PoorInternetConnection(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PoorInternetConnection extends _PoorInternetConnection {
  const _$_PoorInternetConnection(
      {this.code,
      this.error,
      this.message = 'Poor Internet Connection!',
      this.details,
      this.show = true})
      : super._();

  @override
  final String? code;
  @override
  final String? error;
  @JsonKey(defaultValue: 'Poor Internet Connection!')
  @override
  final String message;
  @override
  final String? details;
  @JsonKey(defaultValue: true)
  @override
  final bool show;

  @override
  String toString() {
    return 'NetworkFailure.poorInternetConnection(code: $code, error: $error, message: $message, details: $details, show: $show)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PoorInternetConnection &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
            (identical(other.show, show) ||
                const DeepCollectionEquality().equals(other.show, show)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(details) ^
      const DeepCollectionEquality().hash(show);

  @JsonKey(ignore: true)
  @override
  _$PoorInternetConnectionCopyWith<_PoorInternetConnection> get copyWith =>
      __$PoorInternetConnectionCopyWithImpl<_PoorInternetConnection>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? code, String? error, String message,
            String? details, bool show)
        notConnected,
    required TResult Function(String? code, String? error, String message,
            String? details, bool show)
        poorInternetConnection,
  }) {
    return poorInternetConnection(code, error, message, details, show);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? code, String? error, String message,
            String? details, bool show)?
        notConnected,
    TResult Function(String? code, String? error, String message,
            String? details, bool show)?
        poorInternetConnection,
    required TResult orElse(),
  }) {
    if (poorInternetConnection != null) {
      return poorInternetConnection(code, error, message, details, show);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnectivity value) notConnected,
    required TResult Function(_PoorInternetConnection value)
        poorInternetConnection,
  }) {
    return poorInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnectivity value)? notConnected,
    TResult Function(_PoorInternetConnection value)? poorInternetConnection,
    required TResult orElse(),
  }) {
    if (poorInternetConnection != null) {
      return poorInternetConnection(this);
    }
    return orElse();
  }
}

abstract class _PoorInternetConnection extends NetworkFailure {
  const factory _PoorInternetConnection(
      {String? code,
      String? error,
      String message,
      String? details,
      bool show}) = _$_PoorInternetConnection;
  const _PoorInternetConnection._() : super._();

  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  String? get details => throw _privateConstructorUsedError;
  @override
  bool get show => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PoorInternetConnectionCopyWith<_PoorInternetConnection> get copyWith =>
      throw _privateConstructorUsedError;
}
