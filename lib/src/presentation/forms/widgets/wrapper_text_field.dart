import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class WrapperTextField extends StatelessWidget {
  const WrapperTextField({
    required this.controlName,
    required this.labelText,
    required this.icon,
    required this.validationMessages,
    this.obscureText,
    this.onTap,
    super.key,
  });
  final String controlName;
  final String labelText;
  final IconData icon;
  final Map<String, String Function(Object)>? validationMessages;
  final bool? obscureText;
  final void Function(FormControl<dynamic>)? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ReactiveTextField(
        onTap: onTap,
        style: const TextStyle(
          fontSize: 11,
        ),
        obscureText: obscureText ?? false,
        formControlName: controlName,
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: Icon(icon, size: 12),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
          ),
        ),
        validationMessages: validationMessages,
      ),
    );
  }
}
