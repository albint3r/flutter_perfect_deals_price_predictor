part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.waiting({
    required IAuthDataService auth,
  }) = AuthStateWaiting;

  const factory AuthState.userAuthenticated({
    required IAuthDataService auth,
  }) = AuthStateUserAuthenticated;

  const factory AuthState.userNotAuthenticated({
    required IAuthDataService auth,
  }) = AuthStateUserNotAuthenticated;
}
