part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.initial() = AuthEventInitial;

  const factory AuthEvent.createUserWithEmailAndPassword({
    required ISignInFormModel signInFormModel,
  }) = AuthEventCreateUserWithEmailAndPassword;

  const factory AuthEvent.logInAccount({
    required ILoginFormModel loginFormModel,
  }) = AuthEventLogInAccount;
}
