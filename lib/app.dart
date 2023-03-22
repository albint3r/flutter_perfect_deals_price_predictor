import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfect_deals_price_predictor/src/aplication/my_listing_predictions/my_listing_predictions_bloc.dart';

import 'injectables.dart';
import 'src/aplication/auth/auth_bloc.dart';
import 'src/presentation/core/app_router/app_router.dart';
import 'src/presentation/core/theme/theme_config_style.dart';

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.initial()),
        ),
        BlocProvider(
          create: (context) => getIt<MyListingPredictionsBloc>()..add(
              MyListingPredictionsEvent.start(),
            ),
        )
      ],
      child: MaterialApp.router(
        theme: ThemeConfigStyle.light,
        darkTheme: ThemeConfigStyle.dark,
        themeMode: ThemeMode.light,
        title: 'Perfect Deals Pricing App',
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
