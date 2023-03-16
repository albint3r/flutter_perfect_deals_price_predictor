import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../aplication/predicted_price/predicted_price_bloc.dart';

class AddressPredictionField extends StatelessWidget {
  const AddressPredictionField({
    required this.address,
    super.key,
  });

  final String address;

  void _eventSetAddressOnMap(BuildContext context) {
    context.read<PredictedPriceBloc>().add(
          PredictedPriceEvent.setAddressOnMap(
            address: address,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _eventSetAddressOnMap(context);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: SizedBox(
          height: 20,
          width: 300,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.location_on,
                size: 10,
              ),
              Flexible(
                child: Text(
                  address,
                  textAlign: TextAlign.start,
                  maxLines: 2,
                  style: const TextStyle(fontSize: 9),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
