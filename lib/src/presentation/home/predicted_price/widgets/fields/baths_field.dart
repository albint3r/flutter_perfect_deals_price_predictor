import 'package:flutter/material.dart';

import '../../../../forms/widgets/wraper_slider_field.dart';

class BathsField extends StatelessWidget {
  const BathsField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const WrapperSliderField(
      controlName: 'baths',
      labelText: 'Banos',
      icon: Icons.bathtub_outlined,
      validationMessages: null,
    );
  }
}
