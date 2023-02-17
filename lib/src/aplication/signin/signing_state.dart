part of 'signing_bloc.dart';

@freezed
class SigningState with _$SigningState {
  const factory SigningState({
    required ISignInFormController signInFormController,
    @Default(false) bool isFormValid
  }) = _SigningState;

  factory SigningState.initial({required signInFormController}) => _SigningState(
    signInFormController: signInFormController,
      );
}
