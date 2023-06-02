import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:invisatrack/core/presentation/screens/scaffold_with_navbar.dart';
import 'package:invisatrack/features/aligners/presentation/screens/aligners_screen.dart';
import 'package:invisatrack/features/tracking/presentation/screens/tracking_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _sectionNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/tracking',
  routes: <RouteBase>[
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNavbar(navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _sectionNavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              path: '/tracking',
              builder: (context, state) => const TrackingScreen(),
            ),
          ],
        ),
        StatefulShellBranch(routes: <RouteBase>[
          GoRoute(
            path: '/aligners',
            builder: (context, state) => const AlignersScreen(),
          ),
        ])
      ],
    ),
  ],
);
