import 'my_listings.dart';

abstract class IMyListingsFacade {
  Future<MyListings> getData();
}
