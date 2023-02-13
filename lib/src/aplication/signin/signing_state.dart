part of 'signing_bloc.dart';

@freezed
class SigningState with _$SigningState {
  const factory SigningState({
    required String email,
    required String password,
    required String confirmationPassword,
    @Default(true) bool isObscurePassword,
    @Default(false) bool isValidated,
    String? isEmailValidated,
  }) = _SigningState;

  factory SigningState.initial() => const _SigningState(
        password: '',
        confirmationPassword: '',
        email: '',
      );
}
