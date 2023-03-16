import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '../../../aplication/signin/signing_bloc.dart';

class WrapperSliderField extends StatelessWidget {
  const WrapperSliderField({
    required this.controlName,
    required this.labelText,
    required this.icon,
    required this.validationMessages,
    super.key,
  });
  final String controlName;
  final String labelText;
  final IconData icon;
  final Map<String, String Function(Object)>? validationMessages;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ReactiveSlider(
            formControlName: controlName,
            max: 10,
            min: 0,
          ),
          ReactiveValueListenableBuilder<int>(
            builder: (context, control, child) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Icon(icon),
                    Text('$labelText: '),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      child: Text('${control.value ?? "0"}'),
                    ),
                  ],
                ),
              );
            },
            formControlName: controlName,
          )
        ],
      ),
    );
  }
}
