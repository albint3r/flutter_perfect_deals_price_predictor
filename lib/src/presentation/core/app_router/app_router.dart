import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../domain/predicted_price/listing.dart';
import '../../auth/login_page.dart';
import '../../auth/sign_in_page.dart';
import '../../home/home_page.dart';
import '../../home/predicted_price/predicted_price_listing_page.dart';
import '../../home/view_listing_prediction/listing_prediction_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: HomePage,
      initial: true,
    ),
    AutoRoute(
      path: '/sign-in',
      page: SignInPage,
    ),
    AutoRoute(
      path: '/login',
      page: LoginPage,
    ),
    AutoRoute(
      path: '/predicted_price_listing',
      page: PredictedPriceListingPage,
    ),
    AutoRoute(
      path: '/view_listing_prediction/',
      page: ListingPredictionPage,
    )
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
