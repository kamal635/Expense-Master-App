part of 'auth_listen_cubit.dart';

@freezed
class AuthListenState with _$AuthListenState {
  const factory AuthListenState.initial() = _Initial;

  const factory AuthListenState.authenticated() = Authenticated;
  const factory AuthListenState.unAuthenticated() = UnAuthenticated;
}
