import 'package:flutter/material.dart';
import 'single_radio_list_tile.dart';

class ModelNameField extends StatelessWidget {
  const ModelNameField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SingleRadioListTile(
          formControlName: 'model_name',
          value: 'Casa',
          text: 'Casa',
          icon: Icons.house,
        ),
        SingleRadioListTile(
          formControlName: 'model_name',
          value: 'Departamento',
          text: 'Departamento',
          icon: Icons.apartment,
        ),
      ],
    );
  }
}
