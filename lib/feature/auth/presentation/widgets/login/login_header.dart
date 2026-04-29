import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Chào mừng\ntrở lại 👋",
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w900,
            color: Color(0xFF191C1F),
            height: 1.2,
            letterSpacing: -1,
          ),
        ),
        SizedBox(height: 12),
        Text(
          "Đặt lịch khám với bác sĩ chuyên gia đầu ngành ngay trong tầm tay.",
          style: TextStyle(
            fontSize: 15,
            color: Color(0xFF8D969E),
            fontWeight: FontWeight.w500,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
