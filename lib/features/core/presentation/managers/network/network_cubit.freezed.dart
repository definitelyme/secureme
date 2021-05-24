// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'network_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NetworkStateTearOff {
  const _$NetworkStateTearOff();

  _NetworkState call(
      {bool isLoading = false,
      Either<Response, bool> isConnected =
          const Left(NetworkFailure.notConnected()),
      Either<Response, bool> hasInternet =
          const Left(NetworkFailure.poorInternetConnection())}) {
    return _NetworkState(
      isLoading: isLoading,
      isConnected: isConnected,
      hasInternet: hasInternet,
    );
  }
}

/// @nodoc
const $NetworkState = _$NetworkStateTearOff();

/// @nodoc
mixin _$NetworkState {
  bool get isLoading => throw _privateConstructorUsedError;
  Either<Response, bool> get isConnected => throw _privateConstructorUsedError;
  Either<Response, bool> get hasInternet => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkStateCopyWith<NetworkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkStateCopyWith<$Res> {
  factory $NetworkStateCopyWith(
          NetworkState value, $Res Function(NetworkState) then) =
      _$NetworkStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Either<Response, bool> isConnected,
      Either<Response, bool> hasInternet});
}

/// @nodoc
class _$NetworkStateCopyWithImpl<$Res> implements $NetworkStateCopyWith<$Res> {
  _$NetworkStateCopyWithImpl(this._value, this._then);

  final NetworkState _value;
  // ignore: unused_field
  final $Res Function(NetworkState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isConnected = freezed,
    Object? hasInternet = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isConnected: isConnected == freezed
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as Either<Response, bool>,
      hasInternet: hasInternet == freezed
          ? _value.hasInternet
          : hasInternet // ignore: cast_nullable_to_non_nullable
              as Either<Response, bool>,
    ));
  }
}

/// @nodoc
abstract class _$NetworkStateCopyWith<$Res>
    implements $NetworkStateCopyWith<$Res> {
  factory _$NetworkStateCopyWith(
          _NetworkState value, $Res Function(_NetworkState) then) =
      __$NetworkStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Either<Response, bool> isConnected,
      Either<Response, bool> hasInternet});
}

/// @nodoc
class __$NetworkStateCopyWithImpl<$Res> extends _$NetworkStateCopyWithImpl<$Res>
    implements _$NetworkStateCopyWith<$Res> {
  __$NetworkStateCopyWithImpl(
      _NetworkState _value, $Res Function(_NetworkState) _then)
      : super(_value, (v) => _then(v as _NetworkState));

  @override
  _NetworkState get _value => super._value as _NetworkState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isConnected = freezed,
    Object? hasInternet = freezed,
  }) {
    return _then(_NetworkState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isConnected: isConnected == freezed
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as Either<Response, bool>,
      hasInternet: hasInternet == freezed
          ? _value.hasInternet
          : hasInternet // ignore: cast_nullable_to_non_nullable
              as Either<Response, bool>,
    ));
  }
}

/// @nodoc

class _$_NetworkState with DiagnosticableTreeMixin implements _NetworkState {
  const _$_NetworkState(
      {this.isLoading = false,
      this.isConnected = const Left(NetworkFailure.notConnected()),
      this.hasInternet = const Left(NetworkFailure.poorInternetConnection())});

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: const Left(NetworkFailure.notConnected()))
  @override
  final Either<Response, bool> isConnected;
  @JsonKey(defaultValue: const Left(NetworkFailure.poorInternetConnection()))
  @override
  final Either<Response, bool> hasInternet;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkState(isLoading: $isLoading, isConnected: $isConnected, hasInternet: $hasInternet)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isConnected', isConnected))
      ..add(DiagnosticsProperty('hasInternet', hasInternet));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NetworkState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isConnected, isConnected) ||
                const DeepCollectionEquality()
                    .equals(other.isConnected, isConnected)) &&
            (identical(other.hasInternet, hasInternet) ||
                const DeepCollectionEquality()
                    .equals(other.hasInternet, hasInternet)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isConnected) ^
      const DeepCollectionEquality().hash(hasInternet);

  @JsonKey(ignore: true)
  @override
  _$NetworkStateCopyWith<_NetworkState> get copyWith =>
      __$NetworkStateCopyWithImpl<_NetworkState>(this, _$identity);
}

abstract class _NetworkState implements NetworkState {
  const factory _NetworkState(
      {bool isLoading,
      Either<Response, bool> isConnected,
      Either<Response, bool> hasInternet}) = _$_NetworkState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Either<Response, bool> get isConnected => throw _privateConstructorUsedError;
  @override
  Either<Response, bool> get hasInternet => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NetworkStateCopyWith<_NetworkState> get copyWith =>
      throw _privateConstructorUsedError;
}
