part of 'predicted_price_bloc.dart';

@freezed
class PredictedPriceState with _$PredictedPriceState {
  factory PredictedPriceState({
    required bool isLoading,
    FormGroup? formGroup,
  }) = _PredictedPriceState;

  factory PredictedPriceState.initialize() => PredictedPriceState(
        isLoading: false,
      );
}
