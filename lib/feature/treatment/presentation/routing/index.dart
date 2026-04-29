import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/feature/treatment/application/constants/route_constants.dart';
import '../../presentation/ui/treatment_list_page/pages/index.dart';
import '../../presentation/ui/treatment_detail_page/pages/index.dart';
import '../../presentation/ui/treatment_list_page/bloc/treatment_bloc.dart';
import '../../presentation/ui/treatment_detail_page/bloc/treatment_detail_bloc.dart';

class TreatmentRouter {
  static List<RouteBase> routeStructure(GlobalKey<NavigatorState> key) => [];

  static List<RouteBase> routeStructureInRoot(GlobalKey<NavigatorState> key) =>
      [
        // 1. 📜 DANH SÁCH BỆNH ÁN (Medical Records List)
        GoRoute(
          path: TreatmentPath.treatmentListScreen,
          name: TreatmentRoutes.treatmentListScreen,
          parentNavigatorKey: key,
          pageBuilder: (context, state) {
            final userId = state.extra as int;
            return NoTransitionPage(
              key: state.pageKey,
              child: BlocProvider<TreatmentBloc>(
                create: (context) => GetIt.I<TreatmentBloc>(),
                child: TreatmentListPage(userId: userId),
              ),
            );
          },
        ),

        GoRoute(
          path: TreatmentPath.treatmentDetailScreen,
          name: TreatmentRoutes.treatmentDetailScreen,
          parentNavigatorKey: key,
          pageBuilder: (context, state) {
            final bookingId = state.extra as int;
            return NoTransitionPage(
              key: state.pageKey,
              child: BlocProvider<TreatmentDetailBloc>(
                create: (context) => GetIt.I<TreatmentDetailBloc>(),
                child: TreatmentDetailPage(bookingId: bookingId),
              ),
            );
          },
        ),
      ];
}
