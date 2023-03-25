part of 'my_listing_predictions_bloc.dart';

@freezed
class MyListingPredictionsEvent with _$MyListingPredictionsEvent {
  factory MyListingPredictionsEvent.start() = _MyListingPredictionsEventStart;

  factory MyListingPredictionsEvent.editListing({
    required Listing listing,
  }) = _MyListingPredictionsEventEditListing;

  factory MyListingPredictionsEvent.updateListing() =
      _MyListingPredictionsEventUpdateListing;
}
