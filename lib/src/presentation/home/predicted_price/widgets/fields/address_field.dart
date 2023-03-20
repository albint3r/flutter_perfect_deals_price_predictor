import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../aplication/predicted_price/predicted_price_bloc.dart';
import '../../../../forms/widgets/wrapper_text_field.dart';

class AddressField extends StatelessWidget {
  const AddressField({super.key});

  void _eventTypeSearchLocation(BuildContext context) {
    context.read<PredictedPriceBloc>().add(
          PredictedPriceEvent.typeSearchLocation(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: WrapperTextField(
        controlName: 'address',
        validationMessages: null,
        labelText: 'Ubicación del inmueble',
        icon: Icons.search,
        enableSend: true,
        textInputType: TextInputType.streetAddress,
        onTapSendIcon: () {
          _eventTypeSearchLocation(context);
        },
      ),
    );
  }
}
