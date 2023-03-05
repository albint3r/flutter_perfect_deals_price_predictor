import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../domain/predicted_price/i_predicte_price_facade.dart';
import 'i_predicted_price_form.dart';

@Injectable(as: IPredictedPriceFacade)
class PredictedPriceFacadeImpl implements IPredictedPriceFacade {
  PredictedPriceFacadeImpl({
    required this.predictedPriceForm,
  });

  IPredictedPriceForm predictedPriceForm;
  late FormGroup _form;

  @override
  // TODO: implement form
  FormGroup get form => _form;

  @override
  Future<void> init() async {
    _form = predictedPriceForm.form;
  }

  @override
  Future<void> predict() async {
    // TODO: implement predict
    print('Valores de lat y long');
    print(form.control('lat').value);
    print(form.control('long').value);
    form.control('lat').value = 20.5455;
    form.control('long').value = -103.554;
    print('Valores previos');
    print(form.control('lat').value);
    print(form.control('long').value);
  }
}
