part of 'predicted_price_bloc.dart';

@freezed
class PredictedPriceEvent with _$PredictedPriceEvent {
  factory PredictedPriceEvent.start() = _PredictedPriceEventStart;

  factory PredictedPriceEvent.onMapCreated({
    required GoogleMapController googleController,
  }) = _PredictedPriceEventOnMapCreated;

  factory PredictedPriceEvent.getCurrentLocation({
    required double lat,
    required double long,
  }) = _PredictedPriceEventGetCurrentLocation;

  factory PredictedPriceEvent.latLong({
    required double lat,
    required double long,
  }) = _PredictedPriceLatLong;
}