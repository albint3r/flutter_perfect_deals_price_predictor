import 'package:flutter/material.dart';
import 'package:perfect_deals_price_predictor/src/presentation/home/view_listing_prediction/widgets/tile_feature_info.dart';

import '../../../../domain/predicted_price/listing.dart';
import 'feature_listing_info.dart';

class ContentAlert extends StatelessWidget {
  const ContentAlert({
    required this.listing,
    super.key,
  });

  final Listing listing;

  List<FeatureListingInfo> get _getFeaturesInfo {
    if (listing.modelName.toString() == 'casa' ||
        listing.modelName.toString() == 'house') {
      return [
        FeatureListingInfo(
          value: listing.m2Land ?? 0,
          icon: Icons.photo_size_select_large,
        ),
        FeatureListingInfo(
          value: listing.m2Const,
          icon: Icons.photo_size_select_large,
        ),
        FeatureListingInfo(
          value: listing.rooms,
          icon: Icons.bed,
        ),
        FeatureListingInfo(
          value: listing.baths,
          icon: Icons.bathtub_outlined,
        ),
        FeatureListingInfo(
          value: listing.cars,
          icon: Icons.directions_car,
        ),
      ];
    }
    return [
      FeatureListingInfo(
        value: listing.m2Const,
        icon: Icons.photo_size_select_large,
      ),
      FeatureListingInfo(
        value: listing.rooms,
        icon: Icons.bed,
      ),
      FeatureListingInfo(
        value: listing.baths,
        icon: Icons.bathtub_outlined,
      ),
      FeatureListingInfo(
        value: listing.cars,
        icon: Icons.directions_car,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TileFeatureInfo(
          title: 'Precio del Inmueble',
          value: listing.price!,
          icon: Icons.attach_money,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: _getFeaturesInfo,
        ),
      ],
    );
  }
}
