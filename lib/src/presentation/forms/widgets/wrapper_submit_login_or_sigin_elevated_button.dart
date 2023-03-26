import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class WrapperSubmitLoginOrSigInElevatedButton extends StatelessWidget {
  const WrapperSubmitLoginOrSigInElevatedButton({
    required this.buttonText,
    required this.onSubmit,
    super.key,
  });
  final String buttonText;
  final void Function(BuildContext context) onSubmit;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: ReactiveFormConsumer(
        builder: (context, formGroup, child) {
          return ElevatedButton(
            onPressed: formGroup.valid ? () => onSubmit(context) : null,
            child: Text(
              textAlign: TextAlign.center,
              buttonText, style: theme.textTheme.button,
            ),
          );
        },
      ),
    );
  }
}
