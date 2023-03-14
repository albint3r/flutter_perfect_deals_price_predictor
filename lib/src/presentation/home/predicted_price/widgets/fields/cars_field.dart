import 'package:flutter/material.dart';

import '../../../../forms/widgets/wrapper_slider_field.dart';


class CarsField extends StatelessWidget {
  const CarsField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WrapperSliderField(
      controlName: 'cars',
      labelText: 'Carros',
      icon: Icons.car_repair,
      validationMessages: null,
    );
  }
}