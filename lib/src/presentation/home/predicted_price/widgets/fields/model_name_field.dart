import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ModelNameField extends StatelessWidget {
  const ModelNameField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ReactiveRadioListTile(
            formControlName: 'model_name', value: 'Casa',
            title: const Text('Casa'),
          ),
          ReactiveRadioListTile(
            formControlName: 'model_name', value: 'Departamento',
            title: const Text('Departamento'),
          )
        ],
      ),
    );
  }
}
