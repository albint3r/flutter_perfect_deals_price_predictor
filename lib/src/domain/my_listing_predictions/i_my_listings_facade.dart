import 'package:reactive_forms/reactive_forms.dart';

import '../predicted_price/listing.dart';
import 'my_listings.dart';

abstract class IMyListingsFacade {

  FormGroup get form;
  Future<MyListings> getData();
  void resetForm({
    required Listing listing,
  });
  Future<void> updateListing({
    required Listing listing,
  });
}
