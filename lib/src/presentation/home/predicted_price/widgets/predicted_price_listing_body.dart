import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../aplication/predicted_price/predicted_price_bloc.dart';
import '../../../core/app_router/app_router.dart';
import '../../../core/common_widgets/gap.dart';
import '../../../core/common_widgets/wrapper_scaffold_body.dart';

import 'buttons/submit_predictions_button.dart';
import 'fields/baths_field.dart';
import 'fields/cars_field.dart';
import 'fields/google_maps_stack_container.dart';

import 'fields/m2_const_field.dart';
import 'fields/m2_land_field.dart';
import 'fields/model_name_field.dart';
import 'fields/rooms_field.dart';

class PredictedPriceListingBody extends StatelessWidget {
  const PredictedPriceListingBody({super.key});

  Future<void> _setCameraToCurrentLocation({
    required PredictedPriceState state,
  }) async {
    final bool serviceEnable = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnable) {}
    // Google Controller
    final GoogleMapController? controller =
        await state.googleController?.future;
    controller?.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          bearing: 192.8334901395799,
          target: state.latLng,
          tilt: 59.440717697143555,
          zoom: 19.151926040649414,
        ),
      ),
    );
  }

  // Future<Position> _getCurrentLocation() async {
  //   final bool serviceEnable = await Geolocator.isLocationServiceEnabled();
  //   if (!serviceEnable) {
  //     return Future.error('Location service are disable');
  //   }
  //   final LocationPermission permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.deniedForever) {
  //     return Future.error('Location permission are permanently denied');
  //   }
  //   return Geolocator.getCurrentPosition();
  // }

  void _goToViewListingPrediction(
    BuildContext context,
    PredictedPriceState state,
  ) {
    if (state.listing != null) {
      context.router.replace(
        ListingPredictionRoute(listing: state.listing!),
      );
    }
  }

  void _showErrorDialog(
    BuildContext context,
    PredictedPriceState state,
  ) {
    if (state.isError != null && state.isError!) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          elevation: 5,
          duration: const Duration(seconds: 5),
          padding: const EdgeInsets.all(20),
          content: const Text(
            '¡Ups! Parece que no hay resultados. Inténtalo de nuevo o comunícate con el servicio al cliente.',
          ),
          action: SnackBarAction(
            onPressed: () {},
            label: 'Cerrar',
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PredictedPriceBloc, PredictedPriceState>(
      listenWhen: (previous, current) =>
          previous.latLng != current.latLng ||
          current.listing != null ||
          (previous.isError != current.isError),
      listener: (context, state) {
        _setCameraToCurrentLocation(state: state);
        // Validate to avoid another trigger event.
        _goToViewListingPrediction(context, state);
        _showErrorDialog(context, state);
      },
      builder: (context, state) {
        if (state.isLoading || state.formGroup == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return WrapperScaffoldBody(
          child: ReactiveForm(
            formGroup: state.formGroup!,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const GoogleMapsStackContainer(),
                  const Gap(15),
                  const ModelNameField(),
                  SizedBox(
                    width: 500,
                    child: Row(
                      children: const [
                        Expanded(
                          child: M2LandField(),
                        ),
                        Expanded(
                          child: M2ConstField(),
                        ),
                      ],
                    ),
                  ),
                  const RoomsField(),
                  const BathsField(),
                  const CarsField(),
                  const Divider(),
                  const SubmitPredictionsButton(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
