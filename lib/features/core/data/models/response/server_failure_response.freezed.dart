// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of server_failure_response.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerFailureResponse _$ServerFailureResponseFromJson(
    Map<String, dynamic> json) {
  return _ServerFailureResponse.fromJson(json);
}

/// @nodoc
class _$ServerFailureResponseTearOff {
  const _$ServerFailureResponseTearOff();

  _ServerFailureResponse call(
      {@JsonKey(ignore: true, includeIfNull: false) String? code,
      @JsonKey(ignore: true, includeIfNull: false) String? error,
      @JsonKey(includeIfNull: false) required String message,
      @JsonKey(ignore: true, includeIfNull: false) String? details,
      @JsonKey(includeIfNull: false) ServerFieldErrors? errors,
      @JsonKey(ignore: true, includeIfNull: false) bool popRoute = true,
      @JsonKey(ignore: true, includeIfNull: false) bool show = true}) {
    return _ServerFailureResponse(
      code: code,
      error: error,
      message: message,
      details: details,
      errors: errors,
      popRoute: popRoute,
      show: show,
    );
  }

  ServerFailureResponse fromJson(Map<String, Object> json) {
    return ServerFailureResponse.fromJson(json);
  }
}

/// @nodoc
const $ServerFailureResponse = _$ServerFailureResponseTearOff();

/// @nodoc
mixin _$ServerFailureResponse {
  @JsonKey(ignore: true, includeIfNull: false)
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(ignore: true, includeIfNull: false)
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true, includeIfNull: false)
  String? get details => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  ServerFieldErrors? get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true, includeIfNull: false)
  bool get popRoute => throw _privateConstructorUsedError;
  @JsonKey(ignore: true, includeIfNull: false)
  bool get show => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerFailureResponseCopyWith<ServerFailureResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerFailureResponseCopyWith<$Res> {
  factory $ServerFailureResponseCopyWith(ServerFailureResponse value,
          $Res Function(ServerFailureResponse) then) =
      _$ServerFailureResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true, includeIfNull: false) String? code,
      @JsonKey(ignore: true, includeIfNull: false) String? error,
      @JsonKey(includeIfNull: false) String message,
      @JsonKey(ignore: true, includeIfNull: false) String? details,
      @JsonKey(includeIfNull: false) ServerFieldErrors? errors,
      @JsonKey(ignore: true, includeIfNull: false) bool popRoute,
      @JsonKey(ignore: true, includeIfNull: false) bool show});

  $ServerFieldErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class _$ServerFailureResponseCopyWithImpl<$Res>
    implements $ServerFailureResponseCopyWith<$Res> {
  _$ServerFailureResponseCopyWithImpl(this._value, this._then);

  final ServerFailureResponse _value;
  // ignore: unused_field
  final $Res Function(ServerFailureResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? error = freezed,
    Object? message = freezed,
    Object? details = freezed,
    Object? errors = freezed,
    Object? popRoute = freezed,
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
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ServerFieldErrors?,
      popRoute: popRoute == freezed
          ? _value.popRoute
          : popRoute // ignore: cast_nullable_to_non_nullable
              as bool,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ServerFieldErrorsCopyWith<$Res>? get errors {
    if (_value.errors == null) {
      return null;
    }

    return $ServerFieldErrorsCopyWith<$Res>(_value.errors!, (value) {
      return _then(_value.copyWith(errors: value));
    });
  }
}

/// @nodoc
abstract class _$ServerFailureResponseCopyWith<$Res>
    implements $ServerFailureResponseCopyWith<$Res> {
  factory _$ServerFailureResponseCopyWith(_ServerFailureResponse value,
          $Res Function(_ServerFailureResponse) then) =
      __$ServerFailureResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true, includeIfNull: false) String? code,
      @JsonKey(ignore: true, includeIfNull: false) String? error,
      @JsonKey(includeIfNull: false) String message,
      @JsonKey(ignore: true, includeIfNull: false) String? details,
      @JsonKey(includeIfNull: false) ServerFieldErrors? errors,
      @JsonKey(ignore: true, includeIfNull: false) bool popRoute,
      @JsonKey(ignore: true, includeIfNull: false) bool show});

  @override
  $ServerFieldErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class __$ServerFailureResponseCopyWithImpl<$Res>
    extends _$ServerFailureResponseCopyWithImpl<$Res>
    implements _$ServerFailureResponseCopyWith<$Res> {
  __$ServerFailureResponseCopyWithImpl(_ServerFailureResponse _value,
      $Res Function(_ServerFailureResponse) _then)
      : super(_value, (v) => _then(v as _ServerFailureResponse));

  @override
  _ServerFailureResponse get _value => super._value as _ServerFailureResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? error = freezed,
    Object? message = freezed,
    Object? details = freezed,
    Object? errors = freezed,
    Object? popRoute = freezed,
    Object? show = freezed,
  }) {
    return _then(_ServerFailureResponse(
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
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ServerFieldErrors?,
      popRoute: popRoute == freezed
          ? _value.popRoute
          : popRoute // ignore: cast_nullable_to_non_nullable
              as bool,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServerFailureResponse extends _ServerFailureResponse {
  const _$_ServerFailureResponse(
      {@JsonKey(ignore: true, includeIfNull: false) this.code,
      @JsonKey(ignore: true, includeIfNull: false) this.error,
      @JsonKey(includeIfNull: false) required this.message,
      @JsonKey(ignore: true, includeIfNull: false) this.details,
      @JsonKey(includeIfNull: false) this.errors,
      @JsonKey(ignore: true, includeIfNull: false) this.popRoute = true,
      @JsonKey(ignore: true, includeIfNull: false) this.show = true})
      : super._();

  factory _$_ServerFailureResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ServerFailureResponseFromJson(json);

  @override
  @JsonKey(ignore: true, includeIfNull: false)
  final String? code;
  @override
  @JsonKey(ignore: true, includeIfNull: false)
  final String? error;
  @override
  @JsonKey(includeIfNull: false)
  final String message;
  @override
  @JsonKey(ignore: true, includeIfNull: false)
  final String? details;
  @override
  @JsonKey(includeIfNull: false)
  final ServerFieldErrors? errors;
  @override
  @JsonKey(ignore: true, includeIfNull: false)
  final bool popRoute;
  @override
  @JsonKey(ignore: true, includeIfNull: false)
  final bool show;

  @override
  String toString() {
    return 'ServerFailureResponse(code: $code, error: $error, message: $message, details: $details, errors: $errors, popRoute: $popRoute, show: $show)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServerFailureResponse &&
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
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)) &&
            (identical(other.popRoute, popRoute) ||
                const DeepCollectionEquality()
                    .equals(other.popRoute, popRoute)) &&
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
      const DeepCollectionEquality().hash(errors) ^
      const DeepCollectionEquality().hash(popRoute) ^
      const DeepCollectionEquality().hash(show);

  @JsonKey(ignore: true)
  @override
  _$ServerFailureResponseCopyWith<_ServerFailureResponse> get copyWith =>
      __$ServerFailureResponseCopyWithImpl<_ServerFailureResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ServerFailureResponseToJson(this);
  }
}

abstract class _ServerFailureResponse extends ServerFailureResponse {
  const factory _ServerFailureResponse(
          {@JsonKey(ignore: true, includeIfNull: false) String? code,
          @JsonKey(ignore: true, includeIfNull: false) String? error,
          @JsonKey(includeIfNull: false) required String message,
          @JsonKey(ignore: true, includeIfNull: false) String? details,
          @JsonKey(includeIfNull: false) ServerFieldErrors? errors,
          @JsonKey(ignore: true, includeIfNull: false) bool popRoute,
          @JsonKey(ignore: true, includeIfNull: false) bool show}) =
      _$_ServerFailureResponse;
  const _ServerFailureResponse._() : super._();

  factory _ServerFailureResponse.fromJson(Map<String, dynamic> json) =
      _$_ServerFailureResponse.fromJson;

  @override
  @JsonKey(ignore: true, includeIfNull: false)
  String? get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true, includeIfNull: false)
  String? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true, includeIfNull: false)
  String? get details => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  ServerFieldErrors? get errors => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true, includeIfNull: false)
  bool get popRoute => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true, includeIfNull: false)
  bool get show => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ServerFailureResponseCopyWith<_ServerFailureResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
