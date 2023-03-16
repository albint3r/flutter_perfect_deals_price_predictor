import 'dart:convert';

import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

import '../../infrastructure/predicted_price/i_api_google_place_data_service.dart';

@Injectable(as: IAPIGooglePlaceDataService)
class APIGooglePlaceDataServiceImpl implements IAPIGooglePlaceDataService {
  // TODO REMOVE THIS AND PUT IT EN ENV.
  final String kGoogleApiKey = 'AIzaSyAmzXzm5A0n48ssOa4arzmcbcK41wfjFFY';

  @override
  Future<Response?> getLocationData(
    String text, {
    Map<String, String>? headers,
  }) async {
    final Uri uri =
        Uri.https('maps.googleapis.com', 'maps/api/place/autocomplete/json', {
      'input': text,
      'types': 'address',
      'key': kGoogleApiKey,
    });

    try {
      final response = await get(
        uri,
        headers: headers,
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
