import 'package:flutter/material.dart';

class ForgotHeader extends StatelessWidget {
  const ForgotHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Quên mật khẩu?\nKhông sao cả 👋",
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
          "Nhập email của bạn để chúng tôi gửi mã OTP xác thực và giúp bạn thiết lập lại mật khẩu mới.",
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
