import 'package:injectable/injectable.dart';
import 'package:reactive_forms/src/models/models.dart';

import '../../domain/my_listing_predictions/i_my_listings_facade.dart';
import '../../domain/my_listing_predictions/my_listings.dart';
import '../../domain/predicted_price/listing.dart';
import '../services/i_local_storage_data_source.dart';
import 'i_edit_listing_form.dart';

@Injectable(as: IMyListingsFacade)
class MyListingsFacadeImpl implements IMyListingsFacade {
  MyListingsFacadeImpl({
    required this.localStorageDataSource,
    required this.editListingForm,
  });

  ILocalStorageDataSource localStorageDataSource;
  IEditListingForm editListingForm;

  @override
  FormGroup get form => editListingForm.form;

  @override
  Future<MyListings> getData() async {
    final result = await localStorageDataSource.getData();
    return MyListings(
      listings: result,
    );
  }

  @override
  void resetForm({
    required Listing listing,
  }) {
    // TODO DEFINIR SI SE QUEDARA ASI LOS ARGUMENTOS O SE HARA UN NESTED UPDATE EN EL STATE PARA QUE UPDATE EL NUEVO VALOR.
    editListingForm.note.value = null;
  }

  @override
  Future<Listing> updateListing({
    required Listing listing,
  }) async {
    final Listing updatedListing = listing.copyWith(
      note: editListingForm.note.value,
    );
    await localStorageDataSource.updateListing(
      updatedListing,
    );
    return updatedListing;
  }
}
