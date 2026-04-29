import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../application/constants/route_constants.dart';
import '../ui/profile/pages/index.dart';

class ProfileRouter {
  static StatefulNavigationShell? navigationShell;

  static List<RouteBase> routeStructure(GlobalKey<NavigatorState> key) => [
    GoRoute(
      path: ProfilePath.profileScreen,
      name: ProfileRoutes.profileScreen,
      pageBuilder: (context, state) =>
          NoTransitionPage(key: state.pageKey, child: const ProfilePage()),
    ),
  ];

  static List<RouteBase> routeStructureInRoot(GlobalKey<NavigatorState> key) =>
      [];
}
