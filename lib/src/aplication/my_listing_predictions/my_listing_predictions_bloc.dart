import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../domain/my_listing_predictions/i_my_listings_facade.dart';
import '../../domain/my_listing_predictions/my_listings.dart';
import '../../domain/predicted_price/listing.dart';

part 'my_listing_predictions_bloc.freezed.dart';

part 'my_listing_predictions_event.dart';

part 'my_listing_predictions_state.dart';

@injectable
class MyListingPredictionsBloc
    extends Bloc<MyListingPredictionsEvent, MyListingPredictionsState> {
  MyListingPredictionsBloc({required IMyListingsFacade facade})
      : super(MyListingPredictionsState.initialize()) {
    on<_MyListingPredictionsEventStart>((event, emit) async {
      final myListing = await facade.getData();
      if (myListing.listings.isNotEmpty) {
        emit(
          state.copyWith(
            formGroup: facade.form,
            myListings: myListing,
            isLoading: false,
          ),
        );
      }
    });
    on<_MyListingPredictionsEventEditListing>(
      (event, emit) {
        emit(
          state.copyWith(
            listingToEdit: event.listing,
          ),
        );
        facade.resetForm(
          listing: state.listingToEdit!,
        );
      },
    );
    on<_MyListingPredictionsEventUpdateListing>(
      (event, emit) async {
        await facade.updateListing(
          listing: state.listingToEdit!,
        );
        // Update the listings of the user.
        final myListing = await facade.getData();
        emit(
          state.copyWith(
            myListings: myListing,
          ),
        );
      },
    );
  }
}
