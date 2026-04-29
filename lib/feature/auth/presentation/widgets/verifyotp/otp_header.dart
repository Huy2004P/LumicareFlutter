import 'package:flutter/material.dart';

class OtpHeader extends StatelessWidget {
  final String email;
  const OtpHeader({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Xác thực mã\nOTP 🛡️",
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w900,
            color: Color(0xFF191C1F),
            height: 1.2,
            letterSpacing: -1,
          ),
        ),
        const SizedBox(height: 12),
        RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: 15,
              color: Color(0xFF8D969E),
              height: 1.5,
              fontWeight: FontWeight.w500,
            ),
            children: [
              const TextSpan(text: "Mã xác thực gồm 6 chữ số đã được gửi tới "),
              TextSpan(
                text: email,
                style: const TextStyle(
                  color: Color(0xFF0075FF),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
