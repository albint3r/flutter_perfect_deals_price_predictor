import 'package:reactive_forms/reactive_forms.dart';

abstract class ISignInFormController {
  FormGroup get form;
  String get email;
  String get password;
  String get confirmationPassword;
}