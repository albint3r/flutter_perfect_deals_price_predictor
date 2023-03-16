import 'package:http/http.dart';

import '../../domain/predicted_price/listing.dart';

abstract class IAPIPricePredictorDataService {
  Future<Response?> getPriceListing({
    required Listing listing,
  });
}
