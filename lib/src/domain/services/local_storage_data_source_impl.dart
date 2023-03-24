import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../../infrastructure/services/i_local_storage_data_source.dart';
import '../predicted_price/listing.dart';

@Injectable(as: ILocalStorageDataSource)
class LocalStorageDataSourceImpl implements ILocalStorageDataSource {
  late Database _db;

  @override
  Future<void> clearAllData() {
    // TODO: implement clearAllData
    throw UnimplementedError();
  }

  @override
  Future<void> deleteData(String key) {
    // TODO: implement deleteData
    throw UnimplementedError();
  }

  @override
  Future<List<Listing>> getData() async {
    await _openDataBase();
    const query = 'SELECT * FROM listing';
    final result = await _db.rawQuery(query);
    if (result.isNotEmpty) {
      return result.map((listing) => Listing.fromJson(listing)).toList();
    }
    return [];
  }

  @override
  Future<void> getDataWithExpirationCheck(String key) {
    // TODO: implement getDataWithExpirationCheck
    throw UnimplementedError();
  }

  @override
  bool isDataExpired(String key) {
    // TODO: implement isDataExpired
    throw UnimplementedError();
  }

  @override
  Future<void> saveData(Listing listing) async {
    await _openDataBase();
    final query = _getQueryByListingType(listing);
    await _db.rawQuery(query);
  }

  String _getQueryByListingType(Listing listing) {
    final String prefixQuery;
    final String query;
    const String insertQuery = 'INSERT INTO listing ';
    if (listing.modelName?.toLowerCase() == 'casa' ||
        listing.modelName?.toLowerCase() == 'house') {
      prefixQuery =
          '(m2_land, m2_const, rooms, baths, cars, lat, long, price, model_name, address)';
      query =
          ' VALUES (${listing.m2Land}, ${listing.m2Const}, ${listing.rooms}, ${listing.baths}, ${listing.cars}, ${listing.lat}, ${listing.long}, ${listing.price}, "house", "${listing.address}");';
      return insertQuery + prefixQuery + query;
    }
    prefixQuery =
        '(m2_const, rooms, baths, cars, lat, long, price, model_name, address)';
    query =
        ' VALUES (${listing.m2Const}, ${listing.rooms}, ${listing.baths}, ${listing.cars}, ${listing.lat}, ${listing.long}, ${listing.price}, "apartment", "${listing.address}");';
    return insertQuery + prefixQuery + query;
  }

  Future<void> _openDataBase() async {
    // Get a location using getDatabasesPath
    final databasesPath = await getDatabasesPath();
    final String path = join(databasesPath, 'listings.db');

    _db = await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        // When creating the db, create the table
        await db.execute('CREATE TABLE listing (id INTEGER PRIMARY KEY,'
            'address TEXT,'
            'm2_land REAL,'
            'm2_const REAL NOT NULL,'
            'price_const REAL,'
            'price_land REAL,'
            'rooms INTEGER NOT NULL,'
            'baths INTEGER NOT NULL,'
            'cars INTEGER NOT NULL,'
            'lat REAL NOT NULL,'
            'long REAL NOT NULL,'
            'price REAL,'
            'model_name TEXT,'
            'created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP'
            ');');
      },
    );
  }
}
