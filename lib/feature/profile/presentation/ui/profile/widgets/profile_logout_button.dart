import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:get_it/get_it.dart';

import '../../../../../auth/application/constants/route_constants.dart';
import '../../../../../auth/data/datasources/auth_local_datasource.dart';

class ProfileLogoutButton extends StatelessWidget {
  const ProfileLogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: OutlinedButton(
        onPressed: () async {
          await GetIt.I<AuthLocalDataSource>().clear();
          if (context.mounted) context.goNamed(AuthRoutes.loginScreen);
        },
        style: OutlinedButton.styleFrom(
          foregroundColor: const Color(0xFFE23B4A),
          side: const BorderSide(color: Color(0xFFE23B4A), width: 1.5),
          minimumSize: const Size(double.infinity, 52),
          shape: const StadiumBorder(),
        ),
        child: const Text(
          "ĐĂNG XUẤT",
          style: TextStyle(fontWeight: FontWeight.w700, letterSpacing: 1.2),
        ),
      ),
    );
  }
}
