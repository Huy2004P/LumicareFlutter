import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:lumi_care/core/network/domain/entities/entities.dart'
    show PatientProfileEntity;
import 'package:lumi_care/feature/patient/application/constants/route_constants.dart';
import 'package:lumi_care/feature/patient/presentation/ui/CreatePatientProfilePage/bloc/patient_form_bloc.dart';
import 'package:lumi_care/feature/patient/presentation/ui/CreatePatientProfilePage/pages/index.dart';
import 'package:lumi_care/feature/patient/presentation/ui/PatientListPage/bloc/patient_bloc.dart';
import 'package:lumi_care/feature/patient/presentation/ui/PatientListPage/pages/index.dart';
import 'package:lumi_care/feature/patient/presentation/ui/UpdatePatientProfilePage/bloc/PatientUpdateBloc.dart';
import 'package:lumi_care/feature/patient/presentation/ui/UpdatePatientProfilePage/pages/index.dart';

/// ============================================================================
/// PATIENT ROUTER - Route Configuration for Patient Module
/// ============================================================================

class PatientRouter {
  static List<RouteBase> routeStructure(GlobalKey<NavigatorState> key) => [];

  static List<RouteBase> routeStructureInRoot(GlobalKey<NavigatorState> key) =>
      [
        /// Patient List Screen
        GoRoute(
          path: PatientPath.patientListScreen,
          name: PatientRoutes.patientListScreen,
          parentNavigatorKey: key,
          pageBuilder: (context, state) {
            final userId = state.extra as int;
            return NoTransitionPage(
              key: state.pageKey,
              child: BlocProvider<PatientBloc>(
                create: (context) => GetIt.I<PatientBloc>(),
                child: PatientListPage(userId: userId),
              ),
            );
          },
        ),

        /// Create Patient Profile Screen
        GoRoute(
          path: PatientPath.patientCreateScreen,
          name: PatientRoutes.patientCreateScreen,
          parentNavigatorKey: key,
          pageBuilder: (context, state) {
            final userId = state.extra as int;
            return NoTransitionPage(
              key: state.pageKey,
              child: BlocProvider<PatientFormBloc>(
                create: (context) => GetIt.I<PatientFormBloc>(),
                child: PatientCreatePage(userId: userId),
              ),
            );
          },
        ),

        /// Update Patient Profile Screen
        GoRoute(
          path: PatientPath.patientUpdateScreen,
          name: PatientRoutes.patientUpdateScreen,
          parentNavigatorKey: key,
          builder: (context, state) {
            final profile = state.extra;

            if (profile is PatientProfileEntity) {
              return BlocProvider<PatientUpdateBloc>(
                create: (context) => GetIt.I<PatientUpdateBloc>(),
                child: PatientUpdatePage(profile: profile),
              );
            }

            return const Scaffold(
              body: Center(child: Text('Dữ liệu hồ sơ không hợp lệ')),
            );
          },
        ),
      ];
}
