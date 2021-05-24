part of 'network_cubit.dart';

@freezed
@immutable
class NetworkState with _$NetworkState {
  const factory NetworkState({
    @Default(false) bool isLoading,
    @Default(Left(NetworkFailure.notConnected()))
        Either<Response, bool> isConnected,
    @Default(Left(NetworkFailure.poorInternetConnection()))
        Either<Response, bool> hasInternet,
  }) = _NetworkState;
}
