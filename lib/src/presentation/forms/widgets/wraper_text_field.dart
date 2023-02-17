import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class WrapperTextField extends StatelessWidget {
  const WrapperTextField({
    required this.controlName,
    required this.icon,
    Key? key,
  }) : super(key: key);
  final String controlName;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ReactiveTextField(
        formControlName: controlName,
        decoration: InputDecoration(
          labelText: controlName,
          prefixIcon: Icon(icon),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
          ),
        ),
      ),
    );
  }
}
