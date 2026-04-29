import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String action;
  final VoidCallback onTap;

  const SectionTitle({
    super.key,
    required this.title,
    required this.action,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(textScaler: const TextScaler.linear(1.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 28, // Cực lớn
                  fontWeight:
                      FontWeight.w500, // Luôn dùng 500 theo chuẩn Aeonik
                  color: Color(0xFF191C1F), // Revolut Dark
                  letterSpacing: -0.8, // Tracking hẹp đặc trưng
                  height: 1.0,
                ),
              ),
            ),
            if (action.isNotEmpty)
              GestureDetector(
                onTap: onTap,
                child: Text(
                  action,
                  style: const TextStyle(
                    color: Color(0xFF0075FF), // Sky Blue chủ đạo
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
