import 'package:flutter/material.dart';

class OtpTimerResend extends StatelessWidget {
  final int start;
  final bool isResendDelayed;
  final VoidCallback onResend;

  const OtpTimerResend({
    super.key,
    required this.start,
    required this.isResendDelayed,
    required this.onResend,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text(
            "Chưa nhận được mã xác thực?",
            style: TextStyle(
              color: Color(0xFF8D969E),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          TextButton(
            onPressed: isResendDelayed ? null : onResend,
            style: TextButton.styleFrom(visualDensity: VisualDensity.compact),
            child: Text(
              isResendDelayed ? "Gửi lại sau (${start}s)" : "GỬI LẠI MÃ NGAY",
              style: TextStyle(
                color: isResendDelayed ? Colors.grey : const Color(0xFF0075FF),
                fontWeight: FontWeight.w800,
                fontSize: 14,
                decoration: isResendDelayed ? null : TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
