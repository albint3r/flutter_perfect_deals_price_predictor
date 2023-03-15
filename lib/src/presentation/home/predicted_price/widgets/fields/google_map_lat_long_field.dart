import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../../aplication/predicted_price/predicted_price_bloc.dart';
import 'location_field.dart';

class GoogleMapLatLongField extends StatefulWidget {
  const GoogleMapLatLongField({
    super.key,
  });

  @override
  State<GoogleMapLatLongField> createState() => _GoogleMapLatLongFieldState();
}

class _GoogleMapLatLongFieldState extends State<GoogleMapLatLongField> {
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
    return BlocListener<PredictedPriceBloc, PredictedPriceState>(
      listener: (BuildContext context, state) {
        // TODO ADD SOME LOGIC HERE
      },
      child: ListView(
        shrinkWrap: true,
        children: [
          Card(
            elevation: 10,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: SizedBox(
              height: 200,
              width: 500,
              child: Stack(
                children: [
                  GoogleMap(
                    myLocationEnabled: true,
                    onMapCreated: (controller) {
                      _addGoogleControllerToBloc(
                          controller: controller, context: context);
                    },
                    initialCameraPosition: const CameraPosition(
                      zoom: 11,
                      target: LatLng(
                        20.500,
                        -103.44994,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 11,
                    left: 10,
                    right: 60,
                    child: Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: LocationField(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
