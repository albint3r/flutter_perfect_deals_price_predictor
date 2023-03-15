import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../aplication/predicted_price/predicted_price_bloc.dart';
import '../../../../forms/widgets/wrapper_text_field.dart';

class LocationField extends StatelessWidget {
  const LocationField({super.key});

  void _eventTypeSearchLocation(BuildContext context) {
    context.read<PredictedPriceBloc>().add(
          PredictedPriceEvent.typeSearchLocation(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return WrapperTextField(
      controlName: 'address',
      validationMessages: null,
      labelText: 'Ubicación del inmueble',
      icon: Icons.search,
      enableSend: true,
      onTapSendIcon: () {
        _eventTypeSearchLocation(context);
      },
    );
  }
}
