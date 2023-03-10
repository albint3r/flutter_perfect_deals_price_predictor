import 'package:flutter/material.dart';
import '../../../forms/widgets/wraper_text_field.dart';

class EmailField extends StatelessWidget {
  const EmailField({
    required this.validationErrorMsg,
    super.key,
  });
  final Map<String, String Function(Object)>? validationErrorMsg;

  @override
  Widget build(BuildContext context) {
    return WrapperTextField(
      controlName: 'email',
      labelText: 'Email',
      validationMessages: validationErrorMsg,
      icon: Icons.email,
    );
  }
}
