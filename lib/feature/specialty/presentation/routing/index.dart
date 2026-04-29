import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:get_it/get_it.dart';

import '../../application/constants/route_constants.dart';
import '../specialty_detail_page/bloc/specialty_detail_bloc.dart';
import '../specialty_detail_page/pages/index.dart';

final sl = GetIt.instance;

class SpecialtyRouter {
  static StatefulNavigationShell? navigationShell;
  static List<RouteBase> routeStructure(GlobalKey<NavigatorState> key) => [];
  static List<RouteBase> routeStructureInRoot(GlobalKey<NavigatorState> key) =>
      [
        GoRoute(
          path: SpecialtyPath.specialtyDetailScreen,
          name: SpecialtyRoutes.specialtyDetailScreen,
          builder: (context, state) {
            // 📦 Lấy ID từ extra gửi từ Grid qua
            final id = state.extra is int ? state.extra as int : 0;

            return BlocProvider(
              create: (context) => sl<SpecialtyDetailBloc>(),
              child: SpecialtyDetailPage(
                specialtyId: id,
                specialtyName: "Chi tiết chuyên khoa",
              ),
            );
          },
        ),
      ];
}
