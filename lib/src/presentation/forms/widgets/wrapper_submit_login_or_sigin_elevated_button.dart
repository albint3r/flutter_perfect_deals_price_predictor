import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class WrapperSubmitLoginOrSignInElevatedButton extends StatelessWidget {
  const WrapperSubmitLoginOrSignInElevatedButton({
    required this.buttonText,
    required this.onSubmit,
    Key? key,
  }) : super(key: key);
  final String buttonText;
  final void Function(BuildContext context) onSubmit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Center(
        child: ReactiveFormConsumer(
          builder: (context, formGroup, child) {
            return ElevatedButton(
              onPressed: formGroup.valid ? () => onSubmit(context) : null,
              child: Text(
                buttonText,
              ),
            );
          },
        ),
      ),
    );
  }
}
