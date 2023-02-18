import 'package:flutter/material.dart';
import 'package:perfect_deals_price_predictor/src/presentation/core/app_router/app_router.dart';
import 'package:perfect_deals_price_predictor/src/presentation/core/theme/theme_config_style.dart';


class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeConfigStyle.light,
      darkTheme: ThemeConfigStyle.dark,
      themeMode: ThemeMode.dark,
      title: 'Perfect Deals Pricing App',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
