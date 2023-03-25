import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '../../infrastructure/my_listing_predictions/i_edit_listing_form.dart';

@Injectable(as: IEditListingForm)
class EditListingFormImpl implements IEditListingForm {
  final FormGroup _form = FormGroup(
    {
      'note': FormControl<String>(validators: [Validators.required]),
    },
  );

  @override
  FormGroup get form => _form;

  @override
  AbstractControl<dynamic> get note => _form.control('note');
}
