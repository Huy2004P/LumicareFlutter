import 'package:flutter/material.dart';

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tạo tài khoản\nmới 🔑",
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
          "Cùng Lumicare chăm sóc sức khỏe cho bạn và gia đình mỗi ngày.",
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
