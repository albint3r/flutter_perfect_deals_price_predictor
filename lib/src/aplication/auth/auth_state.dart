part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.started({
    required IAuthDataService auth,
  }) = AuthStateStarted;

  const factory AuthState.userAuthenticated({
    required IAuthDataService auth,
  }) = AuthStateUserAuthenticated;
}
