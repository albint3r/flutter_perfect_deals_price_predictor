import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '../app_router/app_router.dart';

class PredictElevatedButton extends StatelessWidget {
  const PredictElevatedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          // Kill all routes with the Home Page, this helps to
          // avoid bugs when the user navigate back and isn't login
          context.pushRoute(
            const PredictedPriceListingRoute(),
          );
        },
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Predict Listing Price'),
        ));
  }
}
