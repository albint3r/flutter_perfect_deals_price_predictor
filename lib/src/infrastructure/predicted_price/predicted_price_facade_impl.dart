import 'dart:convert';

import 'package:geocoding/geocoding.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../domain/predicted_price/i_predicte_price_facade.dart';
import '../../domain/predicted_price/listing.dart';
import '../../domain/predicted_price/predictions.dart';
import 'i_api_google_place_data_service.dart';
import 'i_api_price_predictor_data_service.dart';
import 'i_predicted_price_form.dart';

@Injectable(as: IPredictedPriceFacade)
class PredictedPriceFacadeImpl implements IPredictedPriceFacade {
  PredictedPriceFacadeImpl({
    required this.predictedPriceForm,
    required this.googleDataService,
    required this.pricePredictorDataService,
  });

  IPredictedPriceForm predictedPriceForm;
  IAPIGooglePlaceDataService googleDataService;
  IAPIPricePredictorDataService pricePredictorDataService;
  late FormGroup _form;

  @override
  FormGroup get form => _form;

  @override
  Future<void> init() async {
    _form = predictedPriceForm.form;
  }

  @override
  Future<void> predict() async {
    final listing = Listing.fromJson(Map<String, dynamic>.from(_form.rawValue));
    print('Listing->$listing');
    final response = await pricePredictorDataService.getPriceListing(
      listing: listing,
    );
  }

  @override
  Future<Predictions> searchLocation() async {
    final String query = form.control('address').value;
    final response = await googleDataService.getLocationData(query);
    final body = jsonDecode(response!.body);
    return Predictions.fromJson(Map<String, dynamic>.from(body));
  }

  @override
  Future<Location> setLatLong({
    required String address,
  }) async {
    final locations = await locationFromAddress(
      address,
    );
    final location = locations[0];
    form.control('lat').value = location.latitude;
    form.control('long').value = location.longitude;
    return locations[0];
  }
}
