part of 'my_listing_predictions_bloc.dart';

@freezed
class MyListingPredictionsEvent with _$MyListingPredictionsEvent {
  factory MyListingPredictionsEvent.start() = _MyListingPredictionsEvent;
  factory MyListingPredictionsEvent.editListing() = _MyListingPredictionsEventEditListing;
}
