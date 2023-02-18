import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../infrastructure/signin/i_sign_in_form_controller.dart';


@Injectable(as: ISignInFormModel)
class SignInFormImpl implements ISignInFormModel {
  final FormGroup _form = FormGroup({
    'userName': FormControl<String>(
        validators: [Validators.required, Validators.minLength(4)]),
    'email': FormControl<String>(validators: [
      Validators.required,
      Validators.email,
    ]),
    'password': FormControl<String>(validators: [
      Validators.required,
      Validators.minLength(8),
    ]),
    'confirmationPassword': FormControl<String>(),
  }, validators: [
    Validators.mustMatch('password', 'confirmationPassword'),
  ]);

  // final FormGroup _form = FormGroup({
  //   'personalInfo': FormGroup({
  //     'userName': FormControl<String>(
  //         validators: [Validators.required, Validators.minLength(4)])
  //   }),
  //   'verificationData': FormGroup({
  //     'email': FormControl<String>(validators: [
  //       Validators.required,
  //       Validators.email,
  //     ]),
  //     'password': FormControl<String>(validators: [
  //       Validators.required,
  //       Validators.minLength(8),
  //     ]),
  //     'confirmationPassword': FormControl<String>(validators: [
  //       Validators.mustMatch('password', 'confirmationPassword'),
  //     ]),
  //   }),
  // });

  @override
  FormGroup get form => _form;

  @override
  String get userName => form.control('userName').value;

  @override
  String get email => form.control('email').value;

  @override
  String get password => form.control('password').value;

  @override
  String get confirmationPassword => form.control('confirmationPassword').value;

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
