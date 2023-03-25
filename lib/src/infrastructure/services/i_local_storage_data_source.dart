import '../../domain/predicted_price/listing.dart';

abstract class ILocalStorageDataSource {
  Future<List<Listing>> getData();

  Future<void> saveData(Listing listing);

  Future<void> updateListing(Listing listing);

  Future<void> deleteData(String key);

  Future<void> clearAllData();

  bool isDataExpired(String key);

  Future<void> getDataWithExpirationCheck(String key);
}
