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
        height: 250,
        width: 500,
        child: Stack(
          children: [
            GoogleMap(
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
            Positioned(
              top: 11,
              left: 10,
              right: 60,
              child: GestureDetector(
                onTap: () {
                  // TODO Add an Event that update the text values.
                },
                child: Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Icon(Icons.location_on,
                          size: 20, color: Theme.of(context).primaryColor),
                      const SizedBox(width: 5),
                      //here we show the address on the top
                      const Expanded(
                        // TODO 'AGREGAR [pickPlaceMark] PROPIEDADES',
                        child: Text(
                          'AGREGAR [pickPlaceMark] PROPIEDADES',
                          style: TextStyle(fontSize: 12),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Icon(Icons.search,
                          size: 25,
                          color: Theme.of(context).textTheme.bodyText1!.color),
                    ],
                  ),
                ),
              ),
            ),
          ],
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
