import 'package:http/http.dart';
abstract class IAPIGooglePlaceDataService {
  Future<Response?> getLocationData(
    String text, {
    Map<String, String>? headers,
  });
}
