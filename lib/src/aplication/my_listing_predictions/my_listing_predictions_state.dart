part of 'my_listing_predictions_bloc.dart';

@freezed
class MyListingPredictionsState with _$MyListingPredictionsState {
  factory MyListingPredictionsState({
    required bool isLoading,
    MyListings? myListings,
  }) = _MyListingPredictionsState;

  factory MyListingPredictionsState.initialize() => MyListingPredictionsState(
    isLoading: true,
  );
}
