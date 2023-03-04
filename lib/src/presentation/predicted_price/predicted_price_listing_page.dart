import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfect_deals_price_predictor/injectables.dart';
import '../../aplication/predicted_price/predicted_price_bloc.dart';
import 'widgets/predicted_price_listing_body.dart';

class PredictedPricePage extends StatelessWidget {
  const PredictedPricePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<PredictedPriceBloc>()
          ..add(
            PredictedPriceEvent.start(),
          ),
        child: const PredictedPriceBody(),
      ),
    );
  }
}
