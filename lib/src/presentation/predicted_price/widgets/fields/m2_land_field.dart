import 'package:flutter/material.dart';

import '../../../forms/widgets/wraper_text_field.dart';

class M2LandField extends StatelessWidget {
  const M2LandField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WrapperTextField(
      controlName: 'm2_land',
      labelText: 'M2 de Terreno',
      icon: Icons.photo_size_select_large,
      validationMessages: null,
    );
  }
}