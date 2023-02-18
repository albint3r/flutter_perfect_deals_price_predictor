import 'package:reactive_forms/reactive_forms.dart';

abstract class ILoginFormModel {
  FormGroup get form;
  String get email;
  String get password;
  Map<String, String Function(Object)>? get validationErrorMsg;
}