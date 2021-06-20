// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthState call(
      {required DisplayName displayName,
      required EmailAddress emailAddress,
      required Phone phone,
      required Password password,
      required Password newPassword,
      Role role = Role.civilian,
      bool isLoading = false,
      bool validate = false,
      bool passwordHidden = true,
      Option<Either<AuthFailure, Unit>> authStatus = const None()}) {
    return _AuthState(
      displayName: displayName,
      emailAddress: emailAddress,
      phone: phone,
      password: password,
      newPassword: newPassword,
      role: role,
      isLoading: isLoading,
      validate: validate,
      passwordHidden: passwordHidden,
      authStatus: authStatus,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  DisplayName get displayName => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Phone get phone => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  Password get newPassword => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get validate => throw _privateConstructorUsedError;
  bool get passwordHidden => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {DisplayName displayName,
      EmailAddress emailAddress,
      Phone phone,
      Password password,
      Password newPassword,
      Role role,
      bool isLoading,
      bool validate,
      bool passwordHidden,
      Option<Either<AuthFailure, Unit>> authStatus});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? emailAddress = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? newPassword = freezed,
    Object? role = freezed,
    Object? isLoading = freezed,
    Object? validate = freezed,
    Object? passwordHidden = freezed,
    Object? authStatus = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as DisplayName,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordHidden: passwordHidden == freezed
          ? _value.passwordHidden
          : passwordHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      authStatus: authStatus == freezed
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {DisplayName displayName,
      EmailAddress emailAddress,
      Phone phone,
      Password password,
      Password newPassword,
      Role role,
      bool isLoading,
      bool validate,
      bool passwordHidden,
      Option<Either<AuthFailure, Unit>> authStatus});
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? emailAddress = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? newPassword = freezed,
    Object? role = freezed,
    Object? isLoading = freezed,
    Object? validate = freezed,
    Object? passwordHidden = freezed,
    Object? authStatus = freezed,
  }) {
    return _then(_AuthState(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as DisplayName,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordHidden: passwordHidden == freezed
          ? _value.passwordHidden
          : passwordHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      authStatus: authStatus == freezed
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {required this.displayName,
      required this.emailAddress,
      required this.phone,
      required this.password,
      required this.newPassword,
      this.role = Role.civilian,
      this.isLoading = false,
      this.validate = false,
      this.passwordHidden = true,
      this.authStatus = const None()});

  @override
  final DisplayName displayName;
  @override
  final EmailAddress emailAddress;
  @override
  final Phone phone;
  @override
  final Password password;
  @override
  final Password newPassword;
  @JsonKey(defaultValue: Role.civilian)
  @override
  final Role role;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool validate;
  @JsonKey(defaultValue: true)
  @override
  final bool passwordHidden;
  @JsonKey(defaultValue: const None())
  @override
  final Option<Either<AuthFailure, Unit>> authStatus;

  @override
  String toString() {
    return 'AuthState(displayName: $displayName, emailAddress: $emailAddress, phone: $phone, password: $password, newPassword: $newPassword, role: $role, isLoading: $isLoading, validate: $validate, passwordHidden: $passwordHidden, authStatus: $authStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthState &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality()
                    .equals(other.newPassword, newPassword)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.validate, validate) ||
                const DeepCollectionEquality()
                    .equals(other.validate, validate)) &&
            (identical(other.passwordHidden, passwordHidden) ||
                const DeepCollectionEquality()
                    .equals(other.passwordHidden, passwordHidden)) &&
            (identical(other.authStatus, authStatus) ||
                const DeepCollectionEquality()
                    .equals(other.authStatus, authStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(newPassword) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(validate) ^
      const DeepCollectionEquality().hash(passwordHidden) ^
      const DeepCollectionEquality().hash(authStatus);

  @JsonKey(ignore: true)
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required DisplayName displayName,
      required EmailAddress emailAddress,
      required Phone phone,
      required Password password,
      required Password newPassword,
      Role role,
      bool isLoading,
      bool validate,
      bool passwordHidden,
      Option<Either<AuthFailure, Unit>> authStatus}) = _$_AuthState;

  @override
  DisplayName get displayName => throw _privateConstructorUsedError;
  @override
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  @override
  Phone get phone => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  Password get newPassword => throw _privateConstructorUsedError;
  @override
  Role get role => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get validate => throw _privateConstructorUsedError;
  @override
  bool get passwordHidden => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get authStatus =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
