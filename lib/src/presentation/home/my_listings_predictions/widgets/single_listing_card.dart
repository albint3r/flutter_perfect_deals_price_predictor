import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../aplication/my_listing_predictions/my_listing_predictions_bloc.dart';
import '../../../../domain/predicted_price/listing.dart';
import '../../view_listing_prediction/widgets/feature_listing_info.dart';
import 'edit_listing_container.dart';

class SingleListingCard extends StatelessWidget {
  const SingleListingCard({
    this.listing,
    super.key,
  });

  final Listing? listing;

  List<FeatureListingInfo> get _getFeaturesInfo {
    if (listing?.modelName.toString() == 'casa' ||
        listing?.modelName.toString() == 'house') {
      return [
        FeatureListingInfo(
          value: listing?.m2Land ?? 0,
          icon: Icons.photo_size_select_large,
          isCardBox: false,
        ),
        FeatureListingInfo(
          value: listing!.m2Const,
          icon: Icons.house,
          isCardBox: false,
        ),
        FeatureListingInfo(
          value: listing!.rooms,
          icon: Icons.bed,
          isCardBox: false,
        ),
        FeatureListingInfo(
          value: listing!.baths,
          icon: Icons.bathtub_outlined,
          isCardBox: false,
        ),
        FeatureListingInfo(
          value: listing!.cars,
          icon: Icons.directions_car,
          isCardBox: false,
        ),
      ];
    }
    return [
      FeatureListingInfo(
        value: listing!.m2Const,
        icon: Icons.apartment,
        isCardBox: false,
      ),
      FeatureListingInfo(
        value: listing!.rooms,
        icon: Icons.bed,
        isCardBox: false,
      ),
      FeatureListingInfo(
        value: listing!.baths,
        icon: Icons.bathtub_outlined,
        isCardBox: false,
      ),
      FeatureListingInfo(
        value: listing!.cars,
        icon: Icons.directions_car,
        isCardBox: false,
      ),
    ];
  }

  String get defaultCoverImage {
    final random = Random();
    if (listing?.modelName.toString() == 'casa' ||
        listing?.modelName.toString() == 'house') {
      const List<String> houses = [
        'https://www.themodernhouse.com/wp-content/uploads/2020/05/best-new-homes-in-london-riba-regional-award-13-950x633.jpg',
        'https://www.mydomaine.com/thmb/WLvbgTPsAoq4QPsbLkYpxy3Ugz0=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/OutEast-14371a850d1b4747b41a9f5ec31c7afd.jpg',
        'https://media.architecturaldigest.com/photos/569992ccc6772b76145675a2/master/w_1920%2Cc_limit/retreat-the-modern-house-in-nature-01.jpg'
      ];
      final i = random.nextInt(houses.length);
      return houses[i];
    }
    const List<String> apartments = [
      'https://content.api.news/v3/images/bin/d0f4f3fef726b1628a42ec11e1d0a7cb?width=1920',
    ];
    final i = random.nextInt(apartments.length);
    return apartments[i];
  }

  String get defaultDirectionTitle =>
      'Boulevard Perfect Deals #1234, C.P 45110, Zapopan Jalisco, México';

  void _editListing(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        context.read<MyListingPredictionsBloc>().add(
              MyListingPredictionsEvent.editListing(
                listing: listing!,
              ),
            );
        return EditListingContainer(
          listing: listing,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final NumberFormat myFormat = NumberFormat.decimalPattern('es');
    final height = MediaQuery.of(context).size.height;
    return InkWell(
      radius: 10,
      highlightColor: theme.primaryColor.withOpacity(.25),
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(70),
        bottomLeft: Radius.circular(70),
      ),
      onLongPress: () {
        _editListing(context);
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Card(
          elevation: 10,
          child: SizedBox(
            // height: 450,
            height: height * .55,
            child: Column(
              children: [
                Image.network(
                  fit: BoxFit.contain,
                  defaultCoverImage,
                ),
                ListTile(
                  title: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          listing?.address ?? defaultDirectionTitle,
                          overflow: TextOverflow.fade,
                          maxLines: 2,
                        ),
                      ),
                      Divider(
                        color: theme.colorScheme.primary,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: _getFeaturesInfo,
                      ),
                    ],
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      '\$ ${myFormat.format(listing?.price)}',
                      style: theme.textTheme.headline5,
                      textAlign: TextAlign.right,
                    ),
                  ),
                  leading: Icon(
                    Icons.location_on,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
