import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/feature/auth/application/constants/route_constants.dart';
import '../bloc/auth_bloc.dart';
import '../ui/forgot_password_page.dart';
import '../ui/login_page.dart';
import '../ui/register_page.dart';
import '../ui/reset_password_page.dart';
import '../ui/verify_otp_page.dart';

class AuthRouter {
  // static StatefulNavigationShell? navigationShell; // Removed unused variable

  static List<RouteBase> routeStructure(GlobalKey<NavigatorState> key) => [];

  static List<RouteBase> routeStructureInRoot(GlobalKey<NavigatorState> key) =>
      [
        GoRoute(
          path: AuthPath.loginScreen,
          name: AuthRoutes.loginScreen,
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              child: BlocProvider<AuthBloc>(
                create: (context) => GetIt.I<AuthBloc>(),
                child: const LoginPage(),
              ),
            );
          },
        ),

        GoRoute(
          path: AuthPath.forgotPasswordScreen,
          name: AuthRoutes.forgotPasswordScreen,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: BlocProvider<AuthBloc>(
              create: (context) => GetIt.I<AuthBloc>(),
              child: const ForgotPasswordPage(),
            ),
          ),
        ),

        GoRoute(
          path: AuthPath.verifyOTPScreen,
          name: AuthRoutes.verifyOTPScreen,
          pageBuilder: (context, state) {
            final email = state.extra as String;
            return NoTransitionPage(
              key: state.pageKey,
              child: BlocProvider<AuthBloc>(
                create: (context) => GetIt.I<AuthBloc>(),
                child: VerifyOtpPage(email: email),
              ),
            );
          },
        ),

        GoRoute(
          path: AuthPath.resetPasswordScreen,
          name: AuthRoutes.resetPasswordScreen,
          pageBuilder: (context, state) {
            final extra = state.extra as Map<String, dynamic>;
            final email = extra['email'] as String;
            final otp = extra['otp'] as String;
            return NoTransitionPage(
              key: state.pageKey,
              child: BlocProvider<AuthBloc>(
                create: (context) => GetIt.I<AuthBloc>(),
                child: ResetPasswordPage(email: email, otp: otp),
              ),
            );
          },
        ),

        GoRoute(
          path: AuthPath.registerScreen,
          name: AuthRoutes.registerScreen,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: BlocProvider<AuthBloc>(
              create: (context) => GetIt.I<AuthBloc>(),
              child: const RegisterPage(),
            ),
          ),
        ),
      ];
}
