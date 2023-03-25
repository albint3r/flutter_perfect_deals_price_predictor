import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ModelNameField extends StatelessWidget {
  const ModelNameField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme =
        theme.textTheme.button?.copyWith(color: theme.primaryColor);
    return Column(
      children: [
        ReactiveRadioListTile(
          formControlName: 'model_name',
          value: 'Casa',
          title: Text(
            'Casa',
            style: textTheme,
          ),
        ),
        ReactiveRadioListTile(
          formControlName: 'model_name',
          value: 'Departamento',
          title: Text(
            'Departamento',
            style: textTheme,
          ),
        )
      ],
    );
  }
}
