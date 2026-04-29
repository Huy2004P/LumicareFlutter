import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/feature/booking/application/constants/route_constants.dart';
import 'package:lumi_care/feature/booking/data/models/booking_confirm_params.dart';
import 'package:lumi_care/feature/booking/domain/use_cases/schedule_usecases.dart';
import 'package:lumi_care/feature/booking/presentation/ui/booking/bloc/booking_bloc.dart'
    show BookingBloc;
import 'package:lumi_care/feature/booking/presentation/ui/booking/pages/index.dart';
import 'package:lumi_care/feature/booking/presentation/ui/booking_confirm/bloc/booking_confirm_bloc.dart';
import 'package:lumi_care/feature/booking/presentation/ui/booking_confirm/pages/index.dart';
import 'package:lumi_care/feature/booking/presentation/ui/booking_history/bloc/booking_history_bloc.dart';
import 'package:lumi_care/feature/booking/presentation/ui/booking_history/pages/index.dart';
import 'package:lumi_care/feature/booking/presentation/ui/feedback/bloc/feedback_bloc.dart';
import 'package:lumi_care/feature/booking/presentation/ui/feedback/pages/index.dart';

import 'package:flutter/material.dart';

class BookingRouter {
  static StatefulNavigationShell? navigationShell;
  static List<RouteBase> routeStructure(GlobalKey<NavigatorState> key) => [
    GoRoute(
      path: BookingPath.bookingHistoryScreen,
      name: BookingRoutes.bookingHistoryScreen,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: BlocProvider(
            create: (context) => GetIt.I<BookingHistoryBloc>(),
            child: const BookingHistoryPage(),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: animation.drive(
                Tween<Offset>(
                  begin: const Offset(1, 0),
                  end: Offset.zero,
                ).chain(CurveTween(curve: Curves.easeOutQuart)),
              ),
              child: child,
            );
          },
        );
      },
    ),
  ];

  static List<RouteBase> routeStructureInRoot(
    GlobalKey<NavigatorState> key,
  ) => [
    GoRoute(
      path: BookingPath.bookingScreen,
      name: BookingRoutes.bookingScreen,
      pageBuilder: (context, state) {
        final serviceId = state.extra as int?;
        return NoTransitionPage(
          key: state.pageKey,
          child: BlocProvider(
            create: (context) =>
                BookingBloc(getScheduleUseCase: GetIt.I<GetScheduleUseCase>()),
            child: BookingPage(serviceId: serviceId),
          ),
        );
      },
    ),
    GoRoute(
      path: BookingPath.bookingConfirmScreen,
      name: BookingRoutes.bookingConfirmScreen,
      pageBuilder: (context, state) {
        final params = state.extra as BookingConfirmParams;

        return CustomTransitionPage(
          key: state.pageKey,
          child: BlocProvider(
            create: (context) => GetIt.I<BookingConfirmBloc>(),
            child: BookingConfirmPage(params: params),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: animation.drive(
                Tween<Offset>(
                  begin: const Offset(0, 1),
                  end: Offset.zero,
                ).chain(CurveTween(curve: Curves.easeOutQuart)),
              ),
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: BookingPath.feedbackScreen,
      name: BookingRoutes.feedbackScreen,
      pageBuilder: (context, state) {
        final params = state.extra as Map<String, dynamic>;
        return CustomTransitionPage(
          key: state.pageKey,
          child: BlocProvider(
            create: (context) => GetIt.I<FeedbackBloc>(),
            child: FeedbackPage(
              bookingId: params['booking_id'],
              patientId: params['patient_id'],
              doctorId: params['doctor_id'],
              clinicId: params['clinic_id'],
              serviceId: params['service_id'],
            ),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: animation.drive(
                Tween<Offset>(
                  begin: const Offset(1, 0),
                  end: Offset.zero,
                ).chain(CurveTween(curve: Curves.easeOutQuart)),
              ),
              child: child,
            );
          },
        );
      },
    ),
  ];
}
