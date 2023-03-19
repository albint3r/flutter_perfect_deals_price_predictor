import 'package:flutter/material.dart';
import '../../../../domain/predicted_price/listing.dart';
import 'show_dialog_listing.dart';

class BodyListingPrediction extends StatelessWidget {
  const BodyListingPrediction({
    required this.listing,
    super.key,
  });

  final Listing listing;

  @override
  Widget build(BuildContext context) {
    return ShowDialogListing(
      listing: listing,
    );
  }
}
