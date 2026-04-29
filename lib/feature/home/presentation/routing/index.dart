import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/feature/auth/presentation/routing/index.dart';
import 'package:lumi_care/feature/booking/presentation/routing/index.dart';
import 'package:lumi_care/feature/clinic/presentation/routing/index.dart';
import 'package:lumi_care/feature/doctor/presentation/routing/index.dart';
import 'package:lumi_care/feature/home/application/constants/route_constants.dart';
import 'package:lumi_care/feature/home/presentation/ui/appBar/bloc/home_search_bloc.dart';
import 'package:lumi_care/feature/home/presentation/ui/appBar/pages/search_page.dart';
import 'package:lumi_care/feature/home/presentation/ui/home/bloc/home_bloc.dart';
import 'package:lumi_care/feature/home/presentation/ui/home/bloc/home_event.dart';
import 'package:lumi_care/feature/home/presentation/ui/news/bloc/news_bloc.dart';
import 'package:lumi_care/feature/home/presentation/ui/news/pages/index.dart';
import 'package:lumi_care/feature/home/presentation/ui/notifications/bloc/notification_bloc.dart';
import 'package:lumi_care/feature/home/presentation/ui/notifications/pages/index.dart';
import 'package:lumi_care/feature/location/presentation/routing/index.dart';
import 'package:lumi_care/feature/patient/presentation/routing/index.dart';
import 'package:lumi_care/feature/payment/presentation/routing/index.dart';
import 'package:lumi_care/feature/profile/presentation/routing/index.dart';
import 'package:lumi_care/feature/services/presentation/routing/index.dart';
import 'package:lumi_care/feature/specialty/presentation/routing/index.dart';
import 'package:lumi_care/feature/treatment/presentation/routing/index.dart';
import '../ui/home/pages/index.dart';
import '../ui/main/index.dart';
import '../ui/splash/splash_page.dart';

class HomeRouter {
  static StatefulNavigationShell? navigationShell;

  // Key dieu huong cho tung nhanh trong bottom navigation
  static final _rootHomeKey = GlobalKey<NavigatorState>(
    debugLabel: 'shell_home',
  );
  static final _rootServiceKey = GlobalKey<NavigatorState>(
    debugLabel: 'shell_service',
  );
  static final _rootHistoryKey = GlobalKey<NavigatorState>(
    debugLabel: 'shell_history',
  );
  static final _rootProfileKey = GlobalKey<NavigatorState>(
    debugLabel: 'shell_profile',
  );

  static List<RouteBase> routeStructure(GlobalKey<NavigatorState> key) => [
    // Man hinh cho (Splash)
    GoRoute(
      path: HomePath.splashScreen,
      name: HomeRoutes.splashScreen,
      pageBuilder: (context, state) =>
          NoTransitionPage(key: state.pageKey, child: const SplashPage()),
    ),

    GoRoute(
      path: HomePath.notificationScreen,
      name: HomeRoutes.notificationScreen,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: BlocProvider.value(
          value: GetIt.I<NotificationBloc>(),
          child: const NotificationHistoryPage(),
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: animation.drive(
              Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).chain(CurveTween(curve: Curves.easeIn)),
            ),
            child: child,
          );
        },
      ),
    ),

    GoRoute(
      path: HomePath.newsScreen,
      name: HomeRoutes.newsScreen,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: BlocProvider(
          create: (context) => GetIt.I<NewsBloc>()..add(GetHomeNewsStarted()),
          child: const NewsPage(),
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: animation.drive(
              Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).chain(CurveTween(curve: Curves.easeIn)),
            ),
            child: child,
          );
        },
      ),
    ),

    GoRoute(
      path: HomePath.searchScreen,
      name: HomeRoutes.searchScreen,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: BlocProvider(
          create: (context) => GetIt.I<HomeSearchBloc>(),
          child: const SearchPage(),
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    ),

    StatefulShellRoute.indexedStack(
      pageBuilder: (context, state, navigationShell) => NoTransitionPage(
        key: state.pageKey,
        child: MainPage(navigationShell: navigationShell),
      ),
      builder: (context, state, navigationShell) {
        HomeRouter.navigationShell = navigationShell;
        return MainPage(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _rootHomeKey,
          routes: [
            GoRoute(
              path: HomePath.homeScreen,
              name: HomeRoutes.homeScreen,
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: BlocProvider(
                  create: (context) => GetIt.I<HomeBloc>()..add(HomeStarted()),
                  child: const HomePage(),
                ),
              ),
            ),
          ],
        ),

        StatefulShellBranch(
          navigatorKey: _rootServiceKey,
          routes: ServiceRouter.routeStructure(_rootServiceKey),
        ),

        // Nhanh Lich su dat lich
        StatefulShellBranch(
          navigatorKey: _rootHistoryKey,
          routes: BookingRouter.routeStructure(_rootHistoryKey),
        ),

        // Nhanh Thong tin ca nhan
        StatefulShellBranch(
          navigatorKey: _rootProfileKey,
          routes: ProfileRouter.routeStructure(_rootProfileKey),
        ),
      ],
    ),

    ...ServiceRouter.routeStructureInRoot(key),
    ...DoctorRouter.routeStructureInRoot(key),
    ...ClinicRouter.routeStructureInRoot(key),
    ...AuthRouter.routeStructureInRoot(key),
    ...ProfileRouter.routeStructureInRoot(key),
    ...BookingRouter.routeStructureInRoot(key),
    ...SpecialtyRouter.routeStructureInRoot(key),
    ...PatientRouter.routeStructureInRoot(key),
    ...LocationRouter.routeStructureInRoot(key),
    ...TreatmentRouter.routeStructureInRoot(key),
    ...PaymentRouter.routeStructureInRoot(key),
  ];

  static List<RouteBase> routeStructureInRoot(GlobalKey<NavigatorState> key) =>
      [];
}
