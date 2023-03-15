import 'package:flutter/cupertino.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:google_maps_webservice/src/places.dart';

abstract class IPredictedPriceFacade {
  FormGroup get form;

  Future<void> init();

  Future<void> searchLocation();

  Future<void> predict();
}
