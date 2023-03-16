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
    return GoogleMap(
      myLocationEnabled: true,
      onMapCreated: (controller) {
        _addGoogleControllerToBloc(controller: controller, context: context);
      },
      initialCameraPosition: const CameraPosition(
        zoom: 11,
        target: LatLng(
          20.500,
          -103.44994,
        ),
      ),
    );
  }
}
