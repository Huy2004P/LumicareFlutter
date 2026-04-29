import 'package:flutter/material.dart';

class ForgotContactSupport extends StatelessWidget {
  const ForgotContactSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {}, // Link hotline/support ở đây nhen Huy
      style: TextButton.styleFrom(visualDensity: VisualDensity.compact),
      child: const Text(
        "Gặp khó khăn? Liên hệ hỗ trợ",
        style: TextStyle(
          color: Color(0xFF8D969E),
          fontSize: 13,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
