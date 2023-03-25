import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../core/common_widgets/gap.dart';

class SingleRadioListTile extends StatelessWidget {
  const SingleRadioListTile({
    super.key,
    required this.formControlName,
    required this.value,
    required this.text,
    required this.icon,
  });

  final String formControlName;
  final String value;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme =
        theme.textTheme.button?.copyWith(color: theme.primaryColorDark);
    return ReactiveRadioListTile(
      formControlName: formControlName,
      value: value,
      title: Row(
        children: [
          Icon(
            icon,
            color: textTheme?.color,
          ),
          const Gap(5),
          Text(
            text,
            style: textTheme,
          ),
        ],
      ),
    );
  }
}
