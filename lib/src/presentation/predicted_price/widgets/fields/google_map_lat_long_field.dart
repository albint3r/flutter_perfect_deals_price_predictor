import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:perfect_deals_price_predictor/src/aplication/predicted_price/predicted_price_bloc.dart';

class GoogleMapsLatLongField extends StatefulWidget {
  const GoogleMapsLatLongField({
    Key? key,
  }) : super(key: key);

  @override
  State<GoogleMapsLatLongField> createState() => _GoogleMapsLatLongFieldState();
}

class _GoogleMapsLatLongFieldState extends State<GoogleMapsLatLongField> {
  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<PredictedPriceBloc>();
    final state = bloc.state;
    return BlocListener<PredictedPriceBloc, PredictedPriceState>(
      listener: (BuildContext context, state) {
        // TODO ADD SOME LOGIC HERE
      },
      child: SizedBox(
        height: 200,
        width: 500,
        child: GoogleMap(
          myLocationButtonEnabled: true,
          myLocationEnabled: true,
          onMapCreated: (controller) {
            _addGoogleControllerToBloc(
              controller: controller,
              context: context,
            );
          },
          initialCameraPosition: const CameraPosition(
            zoom: 12,
            target: LatLng(
              20.500,
              -103.44994,
            ),
          ),
        ),
      ),
    );
  }

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
}
