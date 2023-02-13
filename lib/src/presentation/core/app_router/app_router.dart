import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../../home/home_page.dart';
import '../../sign_in/sign_in_page.dart';

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
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
