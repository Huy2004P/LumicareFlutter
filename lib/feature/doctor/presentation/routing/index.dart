import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/feature/doctor/application/constants/route_constants.dart';
import 'package:lumi_care/feature/doctor/presentation/ui/doctor_detail_page/pages/index.dart';
import 'package:lumi_care/feature/doctor/presentation/ui/doctor_selection_page/pages/index.dart';

class DoctorRouter {
  static StatefulNavigationShell? navigationShell;
  static List<RouteBase> routeStructure(GlobalKey<NavigatorState> key) => [];
  static List<RouteBase> routeStructureInRoot(GlobalKey<NavigatorState> key) =>
      [
        GoRoute(
          path: DoctorPath.doctorDetailScreen,
          name: DoctorRoutes.doctorDetailScreen,
          pageBuilder: (context, state) {
            final doctorId = state.extra as int;
            return NoTransitionPage(
              key: state.pageKey,
              child: DoctorDetailPage(doctorId: doctorId),
            );
          },
        ),
        GoRoute(
          path: DoctorPath.doctorListScreen,
          name: DoctorRoutes.doctorListScreen,
          pageBuilder: (context, state) {
            final specialtyId = state.extra as int?;

            return NoTransitionPage(
              key: state.pageKey,
              child: DoctorPage(specialtyId: specialtyId),
            );
          },
        ),
      ];
}
