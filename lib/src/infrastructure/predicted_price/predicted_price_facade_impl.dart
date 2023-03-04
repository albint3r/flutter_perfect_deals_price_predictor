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
  Future<void> predict() {
    // TODO: implement predict
    throw UnimplementedError();
  }
}
