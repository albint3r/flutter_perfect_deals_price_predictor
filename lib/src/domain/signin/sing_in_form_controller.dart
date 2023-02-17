import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:perfect_deals_price_predictor/src/infrastructure/signin/i_sign_in_form_controller.dart';

@Injectable(as: ISignInFormController)
class SignInFormController implements ISignInFormController {
  final FormGroup _form = FormGroup({
    'email': FormControl<String>(validators: [
      Validators.required,
      Validators.email,
    ]),
    'password': FormControl<String>(validators: [
      Validators.required,
      Validators.minLength(8),
    ]),
    'confirmationPassword': FormControl<String>(validators: [
      Validators.mustMatch('password', 'confirmationPassword'),
    ]),
  });

  @override
  String get email => form.control('email').value;

  @override
  String get password => form.control('password').value;

  @override
  String get confirmationPassword => form.control('confirmationPassword').value;

  @override
  FormGroup get form => _form;
}
