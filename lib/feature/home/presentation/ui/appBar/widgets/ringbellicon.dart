import 'dart:math';
import 'package:flutter/material.dart';

class RingingBellIcon extends StatefulWidget {
  final bool isRinging;
  final int unreadCount;

  const RingingBellIcon({
    super.key,
    required this.isRinging,
    required this.unreadCount,
  });

  @override
  State<RingingBellIcon> createState() => _RingingBellIconState();
}

class _RingingBellIconState extends State<RingingBellIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    // Nếu vừa vào mà đã có flag rung thì cho nó rung luôn
    if (widget.isRinging) {
      _controller.repeat(reverse: true);
    }
  }

  @override
  void didUpdateWidget(covariant RingingBellIcon oldWidget) {
    super.didUpdateWidget(oldWidget);

    // 🎯 Logic 1: Nếu flag isRinging thay đổi
    if (widget.isRinging && !oldWidget.isRinging) {
      _controller.repeat(reverse: true);
    } else if (!widget.isRinging && oldWidget.isRinging) {
      _controller.stop();
      _controller.reset();
    }

    // 🎯 Logic 2: Nếu có tin nhắn mới tăng thêm (unreadCount tăng) -> Lắc một cái rồi thôi
    if (widget.unreadCount > oldWidget.unreadCount && !widget.isRinging) {
      _controller.forward(from: 0).then((_) => _controller.reverse());
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        // Công thức lắc tinh tế hơn (khoảng 12 độ)
        double rotation = sin(_controller.value * 12) * 0.2;

        return Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            // --- ICON CHUÔNG (STYLE FINTECH) ---
            Transform.rotate(
              angle: rotation,
              child: const Icon(
                Icons.notifications_none_rounded, // Dùng Outline cho sang nhen
                color: Color(0xFF191C1F), // Revolut Dark
                size: 26,
              ),
            ),

            // --- BADGE THÔNG BÁO (SKY BLUE) ---
            if (widget.unreadCount > 0)
              Positioned(
                right: -2,
                top: -2,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: const Color(
                      0xFF0075FF,
                    ), // Màu xanh Sky Blue ông thích
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 1.5),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 18,
                    minHeight: 18,
                  ),
                  child: Center(
                    child: Text(
                      widget.unreadCount > 9 ? "9+" : "${widget.unreadCount}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
