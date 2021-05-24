// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'success_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SuccessResponseTearOff {
  const _$SuccessResponseTearOff();

  _SuccessResponse call(
      {String? code,
      String? error,
      required String message,
      String? details,
      bool popRoute = true,
      bool show = true}) {
    return _SuccessResponse(
      code: code,
      error: error,
      message: message,
      details: details,
      popRoute: popRoute,
      show: show,
    );
  }
}

/// @nodoc
const $SuccessResponse = _$SuccessResponseTearOff();

/// @nodoc
mixin _$SuccessResponse {
  String? get code => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;
  bool get popRoute => throw _privateConstructorUsedError;
  bool get show => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SuccessResponseCopyWith<SuccessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessResponseCopyWith<$Res> {
  factory $SuccessResponseCopyWith(
          SuccessResponse value, $Res Function(SuccessResponse) then) =
      _$SuccessResponseCopyWithImpl<$Res>;
  $Res call(
      {String? code,
      String? error,
      String message,
      String? details,
      bool popRoute,
      bool show});
}

/// @nodoc
class _$SuccessResponseCopyWithImpl<$Res>
    implements $SuccessResponseCopyWith<$Res> {
  _$SuccessResponseCopyWithImpl(this._value, this._then);

  final SuccessResponse _value;
  // ignore: unused_field
  final $Res Function(SuccessResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? error = freezed,
    Object? message = freezed,
    Object? details = freezed,
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
abstract class _$SuccessResponseCopyWith<$Res>
    implements $SuccessResponseCopyWith<$Res> {
  factory _$SuccessResponseCopyWith(
          _SuccessResponse value, $Res Function(_SuccessResponse) then) =
      __$SuccessResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? code,
      String? error,
      String message,
      String? details,
      bool popRoute,
      bool show});
}

/// @nodoc
class __$SuccessResponseCopyWithImpl<$Res>
    extends _$SuccessResponseCopyWithImpl<$Res>
    implements _$SuccessResponseCopyWith<$Res> {
  __$SuccessResponseCopyWithImpl(
      _SuccessResponse _value, $Res Function(_SuccessResponse) _then)
      : super(_value, (v) => _then(v as _SuccessResponse));

  @override
  _SuccessResponse get _value => super._value as _SuccessResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? error = freezed,
    Object? message = freezed,
    Object? details = freezed,
    Object? popRoute = freezed,
    Object? show = freezed,
  }) {
    return _then(_SuccessResponse(
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

class _$_SuccessResponse extends _SuccessResponse {
  const _$_SuccessResponse(
      {this.code,
      this.error,
      required this.message,
      this.details,
      this.popRoute = true,
      this.show = true})
      : super._();

  @override
  final String? code;
  @override
  final String? error;
  @override
  final String message;
  @override
  final String? details;
  @JsonKey(defaultValue: true)
  @override
  final bool popRoute;
  @JsonKey(defaultValue: true)
  @override
  final bool show;

  @override
  String toString() {
    return 'SuccessResponse(code: $code, error: $error, message: $message, details: $details, popRoute: $popRoute, show: $show)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SuccessResponse &&
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
      const DeepCollectionEquality().hash(popRoute) ^
      const DeepCollectionEquality().hash(show);

  @JsonKey(ignore: true)
  @override
  _$SuccessResponseCopyWith<_SuccessResponse> get copyWith =>
      __$SuccessResponseCopyWithImpl<_SuccessResponse>(this, _$identity);
}

abstract class _SuccessResponse extends SuccessResponse {
  const factory _SuccessResponse(
      {String? code,
      String? error,
      required String message,
      String? details,
      bool popRoute,
      bool show}) = _$_SuccessResponse;
  const _SuccessResponse._() : super._();

  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  String? get details => throw _privateConstructorUsedError;
  @override
  bool get popRoute => throw _privateConstructorUsedError;
  @override
  bool get show => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SuccessResponseCopyWith<_SuccessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
