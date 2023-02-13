import 'package:flutter/material.dart';
import 'package:perfect_deals_price_predictor/src/presentation/core/app_router/app_router.dart';


class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
