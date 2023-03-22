import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../aplication/my_listing_predictions/my_listing_predictions_bloc.dart';
import 'widgets/listings_view_builder.dart';

class BodyMyListingsPredictions extends StatelessWidget {
  const BodyMyListingsPredictions({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<MyListingPredictionsBloc>();
    final state = bloc.state;
    if (state.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return Column(
      children: const [
        ListingsViewBuilder(),
      ],
    );
  }
}
