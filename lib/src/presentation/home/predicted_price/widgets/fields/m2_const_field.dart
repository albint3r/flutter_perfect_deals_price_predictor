import 'package:flutter/material.dart';

import '../../../../forms/widgets/wrapper_text_field.dart';

class M2ConstField extends StatelessWidget {
  const M2ConstField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const WrapperTextField(
      controlName: 'm2_const',
      labelText: 'M2 de Const',
      icon: Icons.location_city,
      validationMessages: null,
    );
  }
}
