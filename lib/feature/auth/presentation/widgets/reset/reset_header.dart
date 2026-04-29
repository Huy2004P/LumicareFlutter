import 'package:flutter/material.dart';

class ResetHeader extends StatelessWidget {
  const ResetHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Thiết lập\nmật khẩu mới 🔐",
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
          "Vui lòng tạo mật khẩu có độ bảo mật cao để bảo vệ tài khoản Lumicare của bạn.",
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
