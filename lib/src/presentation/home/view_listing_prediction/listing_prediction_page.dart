import 'package:flutter/material.dart';

import '../../../domain/predicted_price/listing.dart';

class ListingPredictionPage extends StatelessWidget {
  const ListingPredictionPage({
    required this.listing,
    super.key,
  });

  final Listing listing;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('${listing.price}'),
      ),
    );
  }
}
