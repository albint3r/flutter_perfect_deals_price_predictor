import 'package:reactive_forms/reactive_forms.dart';

abstract class IEditListingForm {
  FormGroup get form;

  AbstractControl<dynamic> get note;
}
