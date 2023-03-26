import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../aplication/predicted_price/predicted_price_bloc.dart';
import 'address_field.dart';
import 'address_prediction_field.dart';
import 'map_field.dart';

class GoogleMapsStackContainer extends StatefulWidget {
  const GoogleMapsStackContainer({
    super.key,
  });

  @override
  State<GoogleMapsStackContainer> createState() =>
      _GoogleMapsStackContainerState();
}

class _GoogleMapsStackContainerState extends State<GoogleMapsStackContainer> {
  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<PredictedPriceBloc>();
    final state = bloc.state;
    final size = MediaQuery.of(context).size;
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
              height: size.height * .40,
              width: 500,
              child: Stack(
                children: [
                  const MapField(),
                  if (state.addressPredictions == null)
                    const SizedBox()
                  else
                    Positioned(
                      top: 50,
                      left: 10,
                      right: 60,
                      child: Card(
                        elevation: 10,
                        child: Container(
                          color: Colors.white,
                          width: 200,
                          height: 130,
                          child: Column(
                            children: state.addressPredictions!.predictions
                                .map<Widget>((address) {
                              return AddressPredictionField(
                                address: address.description ?? '',
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  const Positioned(
                    top: 11,
                    left: 10,
                    right: 60,
                    child: AddressField(),
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
