import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../domain/predicted_price/listing.dart';
import '../../../core/common_widgets/wrapper_lottie.dart';

class TitleAlert extends StatelessWidget {
  const TitleAlert({
    required this.listing,
    super.key,
  });

  final Listing listing;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(listing.modelName!),
        SizedBox(
          width: double.infinity,
          height: 200,
          child: WrapperLottie(
            scale: 1,
            width: 200,
            height: 200,
            child: Lottie.asset(
              'assets/lottie/view_listing_prediction.json',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
