import 'package:flutter/material.dart';

class QuickMenuItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onTap;

  const QuickMenuItem({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(textScaler: const TextScaler.linear(1.0)),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 68, // Tăng nhẹ size để tạo độ vững chãi
              height: 68,
              decoration: BoxDecoration(
                color: const Color(
                  0xFF0075FF,
                ).withOpacity(0.08), // Nền xanh Sky cực nhạt
                borderRadius: BorderRadius.circular(
                  20,
                ), // Bo góc Squircle hiện đại
                border: Border.all(
                  color: const Color(0xFF0075FF).withOpacity(0.12),
                  width: 1,
                ),
              ),
              child: Center(
                child: Icon(icon, color: const Color(0xFF0075FF), size: 30),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 80,
              child: Text(
                label,
                textAlign: TextAlign.center,
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600, // Đậm hơn chút để tăng độ nhấn
                  color: Color(0xFF191C1F),
                  letterSpacing: 0.1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
