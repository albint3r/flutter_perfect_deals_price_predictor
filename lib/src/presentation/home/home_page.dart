import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfect_deals_price_predictor/src/presentation/home/predicted_price/widgets/buttons/submit_predictions_button.dart';

import '../../aplication/auth/auth_bloc.dart';
import '../../aplication/my_listing_predictions/my_listing_predictions_bloc.dart';
import '../core/app_router/app_router.dart';
import '../core/common_widgets/app_bar/app_bar_page.dart';
import '../core/common_widgets/drawer/body_app_drawer.dart';
import 'my_listings_predictions/body_my_listings_predictions.dart';
import 'predicted_price/predicted_price_listing_page.dart';
import 'well_come/well_come_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _logOutUserRedirectToLogIn(BuildContext context, AuthState state) {
    // Check If the User is Null
    if (state.auth.currentUser == null) {
      // Kill all routes with the Home Page, this helps to
      // avoid bugs when the user navigate back and isn't login
      context.router.replaceAll(
        [const LoginRoute()],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<MyListingPredictionsBloc>();
    final state = bloc.state;
    return Scaffold(
      appBar: AppBarPage.getBar(
        title: 'Perfect Deals',
      ),
      drawer: const BodyAppDrawer(),
      body: BlocListener<AuthBloc, AuthState>(
        listener: _logOutUserRedirectToLogIn,
        child: PageView(
          children: [
            const PredictedPriceListingPage(),
            if (state.myListings == null)
              const WellComePage()
            else
            const BodyMyListingsPredictions(),
          ],
        ),
      ),
    );
  }
}
