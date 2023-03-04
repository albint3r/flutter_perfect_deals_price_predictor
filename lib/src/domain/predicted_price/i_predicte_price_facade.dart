import 'package:reactive_forms/reactive_forms.dart';

abstract class IPredictedPriceFacade {
    FormGroup get form;
    Future<void> init();
    Future<void> predict();
}