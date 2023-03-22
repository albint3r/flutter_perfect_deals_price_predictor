import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../aplication/my_listing_predictions/my_listing_predictions_bloc.dart';
import 'single_listing_card.dart';

class ListingsViewBuilder extends StatelessWidget {
  const ListingsViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<MyListingPredictionsBloc>();
    final state = bloc.state;
    if (state.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return SizedBox(
      height: 700,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scrollbar(
          thickness: 5,
          radius: const Radius.circular(30),
          child: ListView.builder(
            itemCount: state.myListings?.listings.length,
            itemBuilder: (context, index) {
              final listing = state.myListings?.listings[index];
              return SingleListingCard(
                listing: listing,
              );
            },
          ),
        ),
      ),
    );
  }
}
