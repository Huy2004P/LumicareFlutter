import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/feature/clinic/application/constants/route_constants.dart';
import 'package:lumi_care/feature/clinic/presentation/ui/room/bloc/room_bloc.dart';
import 'package:lumi_care/feature/clinic/presentation/ui/room/widgets/room_list_doctor.dart';
import '../ui/clinic/pages/index.dart';
import 'package:flutter/material.dart';

class ClinicRouter {
  static StatefulNavigationShell? navigationShell;
  static List<RouteBase> routeStructure(GlobalKey<NavigatorState> key) => [];
  static List<RouteBase> routeStructureInRoot(GlobalKey<NavigatorState> key) =>
      [
        GoRoute(
          path: ClinicPath.clinicDetailScreen,
          name: ClinicRoutes.clinicDetailScreen,
          pageBuilder: (context, state) {
            final clinicId = state.extra as int;
            return NoTransitionPage(
              key: state.pageKey,
              child: ClinicDetailPage(clinicId: clinicId),
            );
          },
        ),
        GoRoute(
          path: ClinicPath.doctorsByRoomScreen,
          name: ClinicRoutes.doctorsByRoomScreen,
          pageBuilder: (context, state) {
            final extra = state.extra as Map<String, dynamic>;
            final roomId = extra['roomId'] as int;
            final roomName = extra['roomName'] as String;
            return NoTransitionPage(
              key: state.pageKey,
              child: BlocProvider<RoomBloc>(
                create: (context) => GetIt.I<RoomBloc>(),
                child: DoctorsByRoomScreen(roomId: roomId, roomName: roomName),
              ),
            );
          },
        ),
      ];
}
