import 'package:flutter/material.dart';

import '../../../domain/predicted_price/listing.dart';
import 'widgets/body_listing_prediction.dart';

class ListingPredictionPage extends StatelessWidget {
  const ListingPredictionPage({
    required this.listing,
    super.key,
  });

  final Listing listing;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyListingPrediction(
        listing: listing,
      ),
    );
  }
}
