import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../views/home/home_view.dart';
import '../views/main_wrapper/bloc/main_wrapper_bloc.dart';
import '../views/main_wrapper/main_wrapper.dart';
import '../views/settings/settings_view.dart';
import '../views/sub_home/sub_home.dart';
import '../views/sub_settings/sub_settings.dart';

class AppNavigator {
  static String initial = '/home';

  // Private navigators
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorHome = GlobalKey<NavigatorState>(debugLabel: 'shellHome');
  static final _shellNavigatorSettings = GlobalKey<NavigatorState>(debugLabel: 'shellSettings');

  // GoRouter configuration
  static final GoRouter router = GoRouter(
    initialLocation: initial,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return BlocProvider(
            create: (context) => MainWrapperBloc(),
            child: MainWrapper(navigationShell: navigationShell),
          );
        },
        branches: <StatefulShellBranch>[
          // branch of home
          StatefulShellBranch(
            navigatorKey: _shellNavigatorHome,
            routes: <RouteBase>[
              GoRoute(
                path: '/home',
                name: 'Home',
                builder: (BuildContext context, GoRouterState state) {
                  return const HomeView();
                },
                routes: [
                  GoRoute(
                    path: 'subHome',
                    name: 'subHome',
                    pageBuilder: (BuildContext context, GoRouterState state) {
                      return CustomTransitionPage<void>(
                        key: state.pageKey,
                        child: const SubHomeView(),
                        transitionsBuilder: (context,
                            animation,
                            secondaryAnimation,
                            child,) =>
                            FadeTransition(opacity: animation, child: child),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),

          // branch of settings
          StatefulShellBranch(
            navigatorKey: _shellNavigatorSettings,
            routes: <RouteBase>[
              GoRoute(
                path: '/settings',
                name: 'Settings',
                builder: (BuildContext context, GoRouterState state) {
                  return const SettingsView();
                },
                routes: [
                  GoRoute(
                    path: 'subSettings',
                    name: 'subSettings',
                    pageBuilder: (BuildContext context, GoRouterState state) {
                      return CustomTransitionPage<void>(
                        key: state.pageKey,
                        child: const SubSettingsView(),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      )
    ],
  );
}
