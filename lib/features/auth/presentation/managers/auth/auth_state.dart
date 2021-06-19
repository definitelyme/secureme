part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required DisplayName displayName,
    required EmailAddress emailAddress,
    required Phone phone,
    required Password password,
    required Password newPassword,
    @Default(Role.civilian) Role role,
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @Default(true) bool passwordHidden,
    @Default(None()) Option<Either<AuthFailure, Unit>> authStatus,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        displayName: DisplayName(''),
        emailAddress: EmailAddress(''),
        password: Password(''),
        newPassword: Password(''),
        phone: Phone('', Country.NG),
      );
}
