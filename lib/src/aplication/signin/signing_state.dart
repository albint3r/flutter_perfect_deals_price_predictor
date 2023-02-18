part of 'signing_bloc.dart';

@freezed
class SigningState with _$SigningState {
  const factory SigningState(
      {required ISignInFormModel signInFormModel,
      @Default(false) bool isFormValid}) = _SigningState;

  factory SigningState.initial({required signInFormModel}) => _SigningState(
        signInFormModel: signInFormModel,
      );
}
