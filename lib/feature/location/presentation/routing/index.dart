import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/feature/location/application/constants/route_constants.dart';
import 'package:lumi_care/feature/location/presentation/ui/location_add_page/bloc/location_add_bloc.dart';
import 'package:lumi_care/feature/location/presentation/ui/location_add_page/pages/index.dart';
import 'package:lumi_care/feature/location/presentation/ui/location_list_page/bloc/location_bloc.dart';
import 'package:lumi_care/feature/location/presentation/ui/location_list_page/pages/index.dart';

class LocationRouter {
  static StatefulNavigationShell? navigationShell;
  static List<RouteBase> routeStructure(GlobalKey<NavigatorState> key) => [];

  static List<RouteBase> routeStructureInRoot(GlobalKey<NavigatorState> key) =>
      [
        // 1. Trang danh sách địa chỉ đã lưu
        GoRoute(
          path: LocationPath.locationListScreen,
          name: LocationRoutes.locationListScreen,
          pageBuilder: (context, state) {
            final patientId = state.extra as int;
            return NoTransitionPage(
              key: state.pageKey,
              child: BlocProvider(
                create: (context) => GetIt.I<LocationBloc>(),
                child: LocationListPage(patientId: patientId),
              ),
            );
          },
        ),

        // // 2. Trang ghim địa chỉ trên OpenStreetMap (Trang Map)
        GoRoute(
          path: LocationPath.addLocationScreen,
          name: LocationRoutes.addLocationScreen,
          pageBuilder: (context, state) {
            final patientId = state.extra as int;
            return NoTransitionPage(
              key: state.pageKey,
              child: BlocProvider(
                create: (context) => GetIt.I<LocationAddBloc>(),
                child: LocationAddPage(patientId: patientId),
              ),
            );
          },
        ),
      ];
}
