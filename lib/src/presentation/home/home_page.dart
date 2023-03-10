import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../aplication/auth/auth_bloc.dart';
import '../core/app_router/app_router.dart';
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
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: _logOutUserRedirectToLogIn,
        child: PageView(
          children: const [
            WellComePage(),
            PredictedPriceListingPage()
          ],
        ),
      ),
    );
  }
}
