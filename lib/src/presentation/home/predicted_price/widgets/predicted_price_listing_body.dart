import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../aplication/predicted_price/predicted_price_bloc.dart';
import '../../../core/common_widgets/wrapper_scaffold_body.dart';

import 'fields/baths_field.dart';
import 'fields/cars_field.dart';
import 'fields/google_map_lat_long_field.dart';

import 'fields/m2_const_field.dart';
import 'fields/m2_land_field.dart';
import 'fields/rooms_field.dart';

class PredictedPriceListingBody extends StatelessWidget {
  const PredictedPriceListingBody({super.key});

  void _onSubmit(BuildContext context) {
    // TODO HAD SOME LOGIC HERE
  }

  Future<void> _setCameraToCurrentLocation({
    required PredictedPriceState state,
    required double lat,
    required double long,
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
          target: LatLng(lat, long),
          tilt: 59.440717697143555,
          zoom: 19.151926040649414,
        ),
      ),
    );
  }

  Future<Position> _getCurrentLocation() async {
    final bool serviceEnable = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnable) {
      return Future.error('Location service are disable');
    }
    final LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permission are permanently denied');
    }
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PredictedPriceBloc, PredictedPriceState>(
      listener: (context, state) {
        // TODO: implement listener
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
                  const GoogleMapLatLongField(),
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
                  // Center(
                  //   child: ElevatedButton(
                  //       onPressed: () async {
                  //         final currentLocation = await _getCurrentLocation();
                  //         _setCameraToCurrentLocation(
                  //           state: state,
                  //           lat: currentLocation.latitude,
                  //           long: currentLocation.longitude,
                  //         );
                  //       },
                  //       child: const Text('Add lat long')),
                  // ),
                  ReactiveFormConsumer(
                    builder: (context, formGroup, child) {
                      return Center(
                        child: ElevatedButton(
                          onPressed: state.formGroup!.valid
                              ? () {
                                  _onSubmit(context);
                                }
                              : null,
                          child: Text(
                            'Generar Opinion de Valor',
                            style: Theme.of(context).textTheme.button,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
