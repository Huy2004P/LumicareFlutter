import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/feature/auth/application/constants/route_constants.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Bạn chưa có tài khoản? ",
          style: TextStyle(
            color: Color(0xFF8D969E),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        GestureDetector(
          onTap: () => context.pushNamed(AuthRoutes.registerScreen),
          child: const Text(
            "Đăng ký ngay",
            style: TextStyle(
              color: Color(0xFF0075FF),
              fontWeight: FontWeight.w800,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
