part of 'predicted_price_bloc.dart';

@freezed
class PredictedPriceState with _$PredictedPriceState {
  factory PredictedPriceState({
    required bool isLoading,
    required LatLng latLng,
    FormGroup? formGroup,
    Completer<GoogleMapController>? googleController,
    Predictions? addressPredictions,
    Listing? listing,
    bool? isError,
  }) = _PredictedPriceState;

  factory PredictedPriceState.initialize() => PredictedPriceState(
        isLoading: false,
        latLng: const LatLng(
          20.500,
          -103.44994,
        ),
      );
}
