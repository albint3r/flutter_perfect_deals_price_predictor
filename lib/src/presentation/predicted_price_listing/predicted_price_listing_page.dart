import 'package:flutter/material.dart';
import 'package:perfect_deals_price_predictor/src/presentation/predicted_price_listing/widgets/predicted_price_listing_body.dart';

class PredictedPriceListingPage extends StatelessWidget {
  const PredictedPriceListingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PredictedPriceListingBody(),
    );
  }
}
