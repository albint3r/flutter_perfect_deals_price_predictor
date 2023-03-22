import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/my_listing_predictions/i_my_listings_facade.dart';
import '../../domain/my_listing_predictions/my_listings.dart';

part 'my_listing_predictions_bloc.freezed.dart';

part 'my_listing_predictions_event.dart';

part 'my_listing_predictions_state.dart';

@injectable
class MyListingPredictionsBloc
    extends Bloc<MyListingPredictionsEvent, MyListingPredictionsState> {
  MyListingPredictionsBloc({required IMyListingsFacade facade})
      : super(MyListingPredictionsState.initialize()) {
    on<_MyListingPredictionsEvent>((event, emit) async {
      final myListing = await facade.getData();
      if (myListing.listings.isNotEmpty) {
        emit(
          state.copyWith(
            myListings: myListing,
            isLoading: false,
          ),
        );
      }
    });
  }
}
