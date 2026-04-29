import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../../doctor/presentation/routing/index.dart';
import '../../application/constants/route_constants.dart';
import '../ui/service_detail_page/pages/index.dart';
import '../ui/service_page/pages/index.dart';

class ServiceRouter {
  static StatefulNavigationShell? navigationShell;
  static List<RouteBase> routeStructure(GlobalKey<NavigatorState> key) => [
    GoRoute(
      path: ServicePath.serviceScreen,
      name: ServiceRoutes.serviceScreen,
      builder: (context, state) => const ServicesPage(),
    ),
    ...DoctorRouter.routeStructure(key),
  ];
  static List<RouteBase> routeStructureInRoot(
    GlobalKey<NavigatorState> key,
  ) => [
    GoRoute(
      path: ServicePath.serviceDetailScreen,
      name: ServiceRoutes.serviceDetailScreen,
      parentNavigatorKey: key, // Chắc chắn dùng Root Key
      pageBuilder: (context, state) {
        final extra = state.extra as Map<String, dynamic>;
        // 🚀 CHIÊU CUỐI: Tắt sạch hiệu ứng chuyển cảnh để né lỗi Scaffold.geometryOf
        return NoTransitionPage(
          child: ServiceDetailPage(
            service: extra['service'] as ServiceEntity,
            specialtyName: extra['specialtyName'] as String,
          ),
        );
      },
    ),
  ];
}
