import 'package:geocoding/geocoding.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'listing.dart';
import 'predictions.dart';

abstract class IPredictedPriceFacade {
  FormGroup get form;

  Future<void> init();

  Future<Predictions> searchLocation();

  Future<Listing> predict();

  Future<Location> setLatLong({
    required String address,
  });
}
