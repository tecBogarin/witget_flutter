import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/screens/screens.dart';

final List<RouteBase> routes = [
  GoRoute(
    path: '/',
    name: HomeScreen.screenName,
    builder: (BuildContext context, GoRouterState state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/buttons',
    name: ButtonsScreen.screenName,
    builder: (BuildContext context, GoRouterState state) =>
        const ButtonsScreen(),
  ),
  GoRoute(
    path: '/cards',
    name: CardsScreen.screenName,
    builder: (BuildContext context, GoRouterState state) => const CardsScreen(),
  ),
  GoRoute(
    path: '/progress',
    name: ProgressScreen.screenName,
    builder: (BuildContext context, GoRouterState state) =>
        const ProgressScreen(),
  ),
  GoRoute(
    path: '/snackbars',
    name: SnackBarScreen.screenName,
    builder: (BuildContext context, GoRouterState state) =>
        const SnackBarScreen(),
  ),
  GoRoute(
    path: '/animated',
    name: AnimatedScreen.screenName,
    builder: (BuildContext context, GoRouterState state) =>
        const AnimatedScreen(),
  ),
  GoRoute(
    path: '/ui-controls',
    name: UiControlsScreen.screenName,
    builder: (context, state) => const UiControlsScreen(),
  ),
  GoRoute(
    path: '/tutorial',
    name: AppTutorialScreen.screenName,
    builder: (context, state) => const AppTutorialScreen(),
  ),
  GoRoute(
    path: '/infinite',
    name: InfiniteScrollScreen.screenName,
    builder: (context, state) => const InfiniteScrollScreen(),
  ),
];
