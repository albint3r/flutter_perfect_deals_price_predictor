part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required ILoginFormModel loginFormModel,
  }) = _LoginState;

  factory LoginState.initial({required loginFormModel}) => _LoginState(
        loginFormModel: loginFormModel,
      );
}
