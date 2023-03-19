// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    SignInRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SignInPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    PredictedPriceListingRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const PredictedPriceListingPage(),
      );
    },
    ListingPredictionRoute.name: (routeData) {
      final args = routeData.argsAs<ListingPredictionRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ListingPredictionPage(
          listing: args.listing,
          key: args.key,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        RouteConfig(
          SignInRoute.name,
          path: '/sign-in',
        ),
        RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        RouteConfig(
          PredictedPriceListingRoute.name,
          path: '/predicted_price_listing',
        ),
        RouteConfig(
          ListingPredictionRoute.name,
          path: '/view_listing_prediction/',
        ),
      ];
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/sign-in',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [PredictedPriceListingPage]
class PredictedPriceListingRoute extends PageRouteInfo<void> {
  const PredictedPriceListingRoute()
      : super(
          PredictedPriceListingRoute.name,
          path: '/predicted_price_listing',
        );

  static const String name = 'PredictedPriceListingRoute';
}

/// generated route for
/// [ListingPredictionPage]
class ListingPredictionRoute extends PageRouteInfo<ListingPredictionRouteArgs> {
  ListingPredictionRoute({
    required Listing listing,
    Key? key,
  }) : super(
          ListingPredictionRoute.name,
          path: '/view_listing_prediction/',
          args: ListingPredictionRouteArgs(
            listing: listing,
            key: key,
          ),
        );

  static const String name = 'ListingPredictionRoute';
}

class ListingPredictionRouteArgs {
  const ListingPredictionRouteArgs({
    required this.listing,
    this.key,
  });

  final Listing listing;

  final Key? key;

  @override
  String toString() {
    return 'ListingPredictionRouteArgs{listing: $listing, key: $key}';
  }
}
