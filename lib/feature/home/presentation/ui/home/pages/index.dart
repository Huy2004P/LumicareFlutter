import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/feature/auth/application/auto_refresh/TokenAutoManager.dart';
import 'package:lumi_care/feature/auth/data/datasources/auth_local_datasource.dart';
import 'package:lumi_care/feature/home/application/constants/route_constants.dart';
import 'package:lumi_care/feature/home/presentation/ui/appBar/pages/home_appbar.dart';
import 'package:lumi_care/feature/home/presentation/ui/notifications/bloc/notification_bloc.dart';
import 'package:lumi_care/feature/profile/domain/repositories/profile_repository.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_state.dart';
import '../bloc/home_event.dart';
import '../widgets/HomeBodyView.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _displayName = "Khách";
  String? _avatarUrl;

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
    _loadUserInfo();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startTokenGuardian();
    });
  }

  Future<void> _loadUserInfo() async {
    final authLocal = GetIt.I<AuthLocalDataSource>();
    final user = authLocal.getUser();

    if (user != null && user.id != 0) {
      setState(() {
        _displayName = user.fullName.isNotEmpty ? user.fullName : "Người dùng";
        _avatarUrl = user.avatar;
      });
    }

    if (authLocal.isLoggedIn) {
      try {
        final result = await GetIt.I<ProfileRepository>().getProfile();
        if (mounted) {
          setState(() {
            _displayName = result.fullName;
            if (result.avatar.isNotEmpty) {
              _avatarUrl =
                  "${result.avatar}?t=${DateTime.now().millisecondsSinceEpoch}";
            } else {
              _avatarUrl = null;
            }
          });
        }
      } catch (e) {
        debugPrint("Lỗi tải thông tin: $e");
      }
    }
  }

  void _startTokenGuardian() {
    final sl = GetIt.I;
    if (sl.isRegistered<TokenAutoManager>() &&
        sl<AuthLocalDataSource>().isLoggedIn) {
      sl<TokenAutoManager>().start();
    }
  }

  // Future<void> _onRefresh() async {
  //   try {
  //     final result = await GetIt.I<ProfileRepository>().getProfile();
  //     if (mounted) {
  //       setState(() {
  //         _displayName = result.fullName;
  //         _avatarUrl = result.avatar;
  //       });
  //       context.read<HomeBloc>().add(HomeStarted());
  //     }
  //   } catch (e) {
  //     debugPrint(e.toString());
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I<HomeBloc>()..add(HomeStarted()),
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Builder(
                builder: (newContext) {
                  return HomeAppBar(
                    userName: _displayName,
                    avatarUrl: _avatarUrl,
                    onNotificationTap: () =>
                        newContext.pushNamed(HomeRoutes.notificationScreen),
                    onSearchTap: () =>
                        newContext.pushNamed(HomeRoutes.searchScreen),
                    onAvatarTap: () =>
                        StatefulNavigationShell.of(newContext).goBranch(3),
                    onMenuTap: () async {
                      final userId =
                          GetIt.I<AuthLocalDataSource>().getUser()?.id ?? 0;
                      await _loadUserInfo();
                      newContext.read<HomeBloc>().add(HomeStarted());
                      newContext.read<NotificationBloc>().add(
                        GetMyNotificationsEvent(userId),
                      );
                    },
                  );
                },
              ),
              Expanded(
                child: BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    if (state is HomeLoading) {
                      return SingleChildScrollView(child: _buildHomeSkeleton());
                    }
                    // Huy lưu ý: HomeBodyView ĐÃ CÓ CustomScrollView và RefreshIndicator bên trong.
                    // Gọi trực tiếp nó ở đây để tránh lỗi lồng Viewport.
                    return const HomeBodyView();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHomeSkeleton() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 160,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(height: 24),
          Container(height: 20, width: 120, color: Colors.grey.shade100),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
