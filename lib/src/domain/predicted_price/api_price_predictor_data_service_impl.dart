import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

import '../../infrastructure/predicted_price/i_api_price_predictor_data_service.dart';
import 'listing.dart';

@Injectable(as: IAPIPricePredictorDataService)
class APIPricePredictorDataServiceImpl
    implements IAPIPricePredictorDataService {
  final String apiURL = 'http://18.206.46.202/';

  String listingTypeURLHandler({
    required Listing listing,
  }) {
    print('listing.modelName-${listing.modelName}');
    switch (listing.modelName) {
      case 'Departamento':
        {
          return 'apartment/'
              '?m2_const=${listing.m2Const}&rooms=${listing.rooms}&baths=${listing.baths}&cars=${listing.cars}&lat=${listing.lat}&long=${listing.long}';
        }
      case 'Casa':
        {
          return 'house/'
              '?m2_land=${listing.m2Land}&m2_const=${listing.m2Const}&rooms=${listing.rooms}&baths=${listing.baths}&cars=${listing.cars}&lat=${listing.lat}&long=${listing.long}';
        }
    }
    return '';
  }

  @override
  Future<Response?> getPriceListing({
    required Listing listing,
  }) async {
    final String query = listingTypeURLHandler(
      listing: listing,
    );
    return get(
      Uri.parse(apiURL + query),
    );
  }
}
