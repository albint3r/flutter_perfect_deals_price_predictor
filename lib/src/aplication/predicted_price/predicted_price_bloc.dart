import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../domain/predicted_price/i_predicted_price_facade.dart';
import '../../domain/predicted_price/listing.dart';
import '../../domain/predicted_price/predictions.dart';

part 'predicted_price_bloc.freezed.dart';

part 'predicted_price_event.dart';

part 'predicted_price_state.dart';

@injectable
class PredictedPriceBloc
    extends Bloc<PredictedPriceEvent, PredictedPriceState> {
  PredictedPriceBloc(IPredictedPriceFacade facade)
      : super(PredictedPriceState.initialize()) {
    on<_PredictedPriceEventStart>(
      (event, emit) async {
        //
        emit(
          state.copyWith(
            isLoading: true,
          ),
        );
        await facade.init();
        emit(
          state.copyWith(
            isLoading: false,
            formGroup: facade.form,
          ),
        );
      },
    );
    on<_PredictedPriceEventOnMapCreated>(
      (event, emit) {
        final Completer<GoogleMapController> controller =
            Completer<GoogleMapController>();
        // Set up the controller to change the state controller
        controller.complete(
          event.googleController,
        );
        emit(
          state.copyWith(
            googleController: controller,
          ),
        );
      },
    );
    on<_PredictedPriceEventGetCurrentLocation>(
      (event, emit) {
        emit(
          state.copyWith(
            latLng: LatLng(
              event.lat,
              event.long,
            ),
          ),
        );
      },
    );
    on<_PredictedPriceEventTypeSearchLocation>(
      (event, emit) async {
        final addressPredictions = await facade.searchLocation();
        emit(
          state.copyWith(
            addressPredictions: addressPredictions,
          ),
        );
      },
    );
    on<_PredictedPriceEventSetAddressOnMap>(
      (event, emit) async {
        final locations = await facade.setLatLong(
          address: event.address,
        );
        emit(
          state.copyWith(
            addressPredictions: null,
            latLng: LatLng(
              locations.latitude,
              locations.longitude,
            ),
          ),
        );
      },
    );
    on<_PredictedPriceEventOnSubmitPrediction>(
      (event, emit) async {
        // Add a loading until the predict process finished.
        emit(
          state.copyWith(
            isLoading: true,
          ),
        );
        final listingPredicted = await facade.predict();
        // Update value to predict.
        emit(state.copyWith(
          isLoading: false,
          listing: listingPredicted,
        ));
      },
    );
  }
}
