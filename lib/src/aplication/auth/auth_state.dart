part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial({
    required IAuthDataService auth,
    required int hashTime,
  }) = AuthStateWaiting;
}
