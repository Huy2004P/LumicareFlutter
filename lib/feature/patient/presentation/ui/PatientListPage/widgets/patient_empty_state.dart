import 'package:flutter/material.dart';

class PatientEmptyState extends StatelessWidget {
  const PatientEmptyState({super.key});

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
              Icons.people_alt_outlined,
              size: 48,
              color: Color(0xFF8D969E),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            "Chưa có hồ sơ nào",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF191C1F),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Vui lòng thêm hồ sơ để đặt lịch khám.",
            style: TextStyle(color: Color(0xFF8D969E), fontSize: 14),
          ),
        ],
      ),
    );
  }
}
