import 'package:flutter/material.dart';

import '../../../forms/widgets/wraper_slider_field.dart';


class RoomsField extends StatelessWidget {
  const RoomsField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WrapperSliderField(
      controlName: 'rooms',
      labelText: 'Habitaciones',
      icon: Icons.bed,
      validationMessages: null,
    );
  }
}