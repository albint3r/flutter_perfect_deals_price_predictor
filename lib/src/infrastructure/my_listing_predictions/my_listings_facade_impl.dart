import 'package:injectable/injectable.dart';

import '../../domain/my_listing_predictions/i_my_listings_facade.dart';
import '../../domain/my_listing_predictions/my_listings.dart';
import '../services/i_local_storage_data_source.dart';

@Injectable(as: IMyListingsFacade)
class MyListingsFacadeImpl implements IMyListingsFacade {
  MyListingsFacadeImpl({required this.localStorageDataSource});

  ILocalStorageDataSource localStorageDataSource;

  @override
  Future<MyListings> getData() async {
    final result = await localStorageDataSource.getData();
    return MyListings(
      listings: result,
    );
  }
}
