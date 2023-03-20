import 'dart:convert';

import 'package:geocoding/geocoding.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../domain/predicted_price/i_predicted_price_facade.dart';
import '../../domain/predicted_price/listing.dart';
import '../../domain/predicted_price/predictions.dart';
import '../services/i_local_storage_data_source.dart';
import 'i_api_google_place_data_service.dart';
import 'i_api_price_predictor_data_service.dart';
import 'i_predicted_price_form.dart';

@Injectable(as: IPredictedPriceFacade)
class PredictedPriceFacadeImpl implements IPredictedPriceFacade {
  PredictedPriceFacadeImpl({
    required this.predictedPriceForm,
    required this.googleDataService,
    required this.pricePredictorDataService,
    required this.localStorageDataSource,
  });

  IPredictedPriceForm predictedPriceForm;
  IAPIGooglePlaceDataService googleDataService;
  IAPIPricePredictorDataService pricePredictorDataService;
  ILocalStorageDataSource localStorageDataSource;
  late FormGroup _form;

  @override
  FormGroup get form => _form;

  @override
  Future<void> init() async {
    _form = predictedPriceForm.form;
  }

  @override
  Future<Listing?> predict() async {
    // Transform the Form Values to a Listing
    final listing = Listing.fromJson(Map<String, dynamic>.from(_form.rawValue));
    final response = await pricePredictorDataService.getPriceListing(
      listing: listing,
    );
    if(response != null && response.statusCode == 200) {
      final parsed = jsonDecode(response.body);
      final resultListing =  Listing.fromJson(parsed);
      await localStorageDataSource.saveData(resultListing);
      return resultListing;
    }
    return null;
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

  @override
  Future<void> saveListing() {
    // TODO: implement saveListing
    throw UnimplementedError();
  }
}
