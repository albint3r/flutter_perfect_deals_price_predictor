part of 'signing_bloc.dart';

@freezed
class SigningState with _$SigningState {
  const factory SigningState({
    required ISignInFormController formController,
  }) = _SigningState;

  factory SigningState.initial({required formController}) => _SigningState(
        formController: formController,
      );
}