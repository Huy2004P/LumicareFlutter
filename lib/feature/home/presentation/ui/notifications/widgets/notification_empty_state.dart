import 'package:flutter/material.dart';

class NotificationEmptyState extends StatelessWidget {
  const NotificationEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: const BoxDecoration(
              color: Color(0xFFF4F4F4),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.notifications_off_outlined,
              size: 48,
              color: Color(0xFFC9C9CD),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            "Trống trải quá...",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF191C1F),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Bạn không có thông báo nào ở đây.",
            style: TextStyle(color: Color(0xFF8D969E), fontSize: 14),
          ),
        ],
      ),
    );
  }
}
