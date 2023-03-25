import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class NoteField extends StatelessWidget {
  const NoteField({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.9),
        borderRadius: const BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ReactiveTextField(
          maxLines: 20,
          style: theme.textTheme.headline6,
          textAlign: TextAlign.center,
          // style: const TextStyle(
          //   fontSize: 20,
          // ),
          decoration: const InputDecoration(
            labelText: 'Notas del Inmueble',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
            ),
          ),
          formControlName: 'note',
        ),
      ),
    );
  }
}
