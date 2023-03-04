import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../infrastructure/predicted_price/i_predicted_price_form.dart';

@Injectable(as: IPredictedPriceForm)
class PredictedPriceForm implements IPredictedPriceForm {
  final FormGroup _form = FormGroup(
    {
      'm2_land': FormControl<double>(validators: [
        Validators.required,
      ]),
      'm2_const': FormControl<double>(validators: [
        Validators.required,
      ]),
      'rooms': FormControl<int>(validators: [
        Validators.required,
      ]),
      'baths': FormControl<int>(validators: [
        Validators.required,
      ]),
      'cars': FormControl<int>(validators: [
        Validators.required,
      ]),
      'lat': FormControl<double>(validators: [
        Validators.required,
      ]),
      'long': FormControl<double>(validators: [
        Validators.required,
      ])
    },
  );

  @override
  FormGroup get form => _form;
}
