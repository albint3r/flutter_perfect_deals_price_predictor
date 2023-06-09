import 'package:reactive_forms/reactive_forms.dart';

abstract class ISignInFormModel {
  FormGroup get form;
  String get userName;
  String get email;
  String get password;
  String get confirmationPassword;
  Map<String, String Function(Object)>? get validationErrorMsg;
}

