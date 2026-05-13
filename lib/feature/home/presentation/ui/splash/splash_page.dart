import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/core/network/data/repositories_impl/repositories_impl.dart';
import 'package:lumi_care/core/services/onesignal_services.dart';
import 'package:lumi_care/feature/auth/application/constants/route_constants.dart';
import 'package:lumi_care/feature/auth/domain/use_cases/auth_usecases.dart';
import 'package:lumi_care/feature/home/application/constants/route_constants.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  final Color revolutDark = const Color(0xFF191C1F);
  final Color skyBlue = const Color(0xFF0075FF);

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.6, curve: Curves.easeIn),
      ),
    );

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.6, curve: Curves.easeOut),
      ),
    );

    _controller.forward();
    _handleNavigation();
  }

  Future<void> _handleNavigation() async {
    await Future.delayed(const Duration(milliseconds: 2500));
    if (!mounted) return;

    final checkLoginStatus = GetIt.I<CheckLoginStatusUseCase>();
    final repo = GetIt.I<AppRepositoryImpl>();

    if (checkLoginStatus.execute()) {
      try {
        final isAlive = await repo.verifyAccountStatus();

        if (isAlive) {
          final savedUserId = repo.getAutoLoginUserId();
          if (savedUserId != null && savedUserId != 0) {
            await OneSignalService.loginUser(savedUserId.toString());
            print("🚀 [Splash] OneSignal Auto-Linked: $savedUserId");
          }
          context.goNamed(HomeRoutes.homeScreen);
        } else {
          await _handleLogout(repo);
        }
      } catch (e) {
        await _handleLogout(repo);
      }
    } else {
      context.pushNamed(AuthRoutes.loginScreen);
    }
  }

  Future<void> _handleLogout(AppRepositoryImpl repo) async {
    await repo.clearSession();
    if (!mounted) return;
    context.goNamed(AuthRoutes.loginScreen);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Opacity(
                  opacity: _fadeAnimation.value,
                  child: Transform.scale(
                    scale: _scaleAnimation.value,
                    child: child,
                  ),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 90,
                    height: 90,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    "Lumicare",
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w800,
                      color: revolutDark,
                      letterSpacing: -1.8,
                      height: 1.0,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "CHĂM SÓC SỨC KHỎE TOÀN DIỆN",
                    style: TextStyle(
                      fontSize: 10,
                      color: skyBlue,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 0,
            right: 0,
            child: Center(
              child: SizedBox(
                width: 40,
                height: 2,
                child: LinearProgressIndicator(
                  // ignore: deprecated_member_use
                  backgroundColor: skyBlue.withOpacity(0.1),
                  valueColor: AlwaysStoppedAnimation<Color>(skyBlue),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
