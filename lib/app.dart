import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfect_deals_price_predictor/src/aplication/auth/auth_bloc.dart';
import 'package:perfect_deals_price_predictor/src/presentation/core/app_router/app_router.dart';
import 'package:perfect_deals_price_predictor/src/presentation/core/theme/theme_config_style.dart';

import 'injectables.dart';


class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>  getIt<AuthBloc>()..add(const AuthEvent.initial()),
      child: MaterialApp.router(
        theme: ThemeConfigStyle.light,
        darkTheme: ThemeConfigStyle.dark,
        themeMode: ThemeMode.dark,
        title: 'Perfect Deals Pricing App',
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
