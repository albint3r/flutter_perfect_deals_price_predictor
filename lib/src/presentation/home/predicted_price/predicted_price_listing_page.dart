import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injectables.dart';
import '../../../aplication/predicted_price/predicted_price_bloc.dart';
import 'widgets/predicted_price_listing_body.dart';

class PredictedPriceListingPage extends StatelessWidget {
  const PredictedPriceListingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PredictedPriceBloc>()
        ..add(
          PredictedPriceEvent.start(),
        ),
      child: const PredictedPriceListingBody(),
    );
  }
}
