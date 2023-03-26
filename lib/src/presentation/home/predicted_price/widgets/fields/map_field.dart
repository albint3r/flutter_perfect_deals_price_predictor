import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../../aplication/predicted_price/predicted_price_bloc.dart';

class MapField extends StatelessWidget {
  const MapField({super.key});

  void _addGoogleControllerToBloc({
    required GoogleMapController controller,
    required BuildContext context,
  }) {
    context.read<PredictedPriceBloc>().add(
          PredictedPriceEvent.onMapCreated(
            googleController: controller,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<PredictedPriceBloc>();
    final state = bloc.state;
    return GoogleMap(
      myLocationButtonEnabled: true,
      myLocationEnabled: true,
      onMapCreated: (controller) {
        _addGoogleControllerToBloc(controller: controller, context: context);
      },
      initialCameraPosition: CameraPosition(
        zoom: 11,
        target: state.latLng,
      ),
      markers: {
        Marker(
          markerId: const MarkerId('listingLocation'),
          position: state.latLng,
          draggable: true,
          onDragEnd: (value) {
            print('value->$value');
            print('value->$value');
            print('value->$value');
            print('value->$value');
            print('value->$value');
            // TODO ADD UPDATE LAT AND LONG IN FORM CONTROL
          },
        )
      },
    );
  }
}
