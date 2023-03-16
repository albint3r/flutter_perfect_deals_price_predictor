import 'package:http/http.dart';
import 'package:http/src/response.dart';
import 'package:injectable/injectable.dart';

import '../../infrastructure/predicted_price/i_api_price_predictor_data_service.dart';
import 'listing.dart';

@Injectable(as: IAPIPricePredictorDataService)
class APIPricePredictorDataServiceImpl
    implements IAPIPricePredictorDataService {
  @override
  Future<Response?> getPriceListing({
    required Listing listing,
  }) async {
    print('COMENZANDO ESTE PEDO');
    print('COMENZANDO ESTE PEDO');
    print('COMENZANDO ESTE PEDO');
    print('COMENZANDO ESTE PEDO');
    final Uri uri = Uri.http('http://127.0.0.1:8000', 'house/', {
      'm2_land': listing.m2Land,
      'm2_const': listing.m2Const,
      'rooms': listing.rooms,
      'baths': listing.baths,
      'cars': listing.cars,
      'lat': listing.lat,
      'long': listing.long,
    });
    print('uri->$uri');
    print('uri->$uri');
    print('uri->$uri');
    try {
      final response = await get(
        uri,
      );
      if (response.statusCode == 200) {
        return response;
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }
}
