part of 'predicted_price_bloc.dart';

@freezed
class PredictedPriceEvent with _$PredictedPriceEvent {
  factory PredictedPriceEvent.start() = _PredictedPriceEventStart;

  factory PredictedPriceEvent.latLong({
    required double lat,
    required double long,
  }) = _PredictedPriceLatLong;
}
