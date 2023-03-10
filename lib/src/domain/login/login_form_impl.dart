import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../infrastructure/login/i_login_form_model.dart';

@Injectable(as: ILoginFormModel)
class LoginFormImpl implements ILoginFormModel {
  final FormGroup _form = FormGroup(
    {
      'email': FormControl<String>(
        validators: [
          Validators.required,
          Validators.email,
        ],
      ),
      'password': FormControl<String>(
        validators: [
          Validators.required,
          Validators.minLength(8),
        ],
      ),
    },
  );

  @override
  FormGroup get form => _form;

  @override
  String get email => form.control('email').value;

  @override
  String get password => form.control('password').value;

  @override
  Map<String, String Function(Object)>? get validationErrorMsg {
    return {
      ValidationMessage.required: (error) => 'This field is required',
      ValidationMessage.email: (error) => 'You need to add a valid Email',
      ValidationMessage.minLength: (error) =>
          'This field need have at least ${(error as Map)['requiredLength']} Characters',
      ValidationMessage.mustMatch: (error) => 'Is not the same as the password',
    };
  }
}
