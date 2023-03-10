part of 'signing_bloc.dart';

@freezed
class SigningState with _$SigningState {
  const factory SigningState({
    required ISignInFormModel signInFormModel,
  }) = _SigningState;

  factory SigningState.initial({
    required ISignInFormModel signInFormModel,
  }) =>
      _SigningState(
        signInFormModel: signInFormModel,
      );
}
