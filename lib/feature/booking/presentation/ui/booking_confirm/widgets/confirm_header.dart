import 'package:flutter/material.dart';

class ConfirmHeader extends StatelessWidget {
  const ConfirmHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Icon(Icons.verified_user_rounded, size: 64, color: Color(0xFF0075FF)),
        SizedBox(height: 16),
        Text(
          "Kiểm tra thông tin",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: Color(0xFF191C1F),
          ),
        ),
        SizedBox(height: 4),
        Text(
          "Vui lòng rà soát kỹ trước khi xác nhận đặt lịch",
          style: TextStyle(
            color: Color(0xFF8D969E),
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
