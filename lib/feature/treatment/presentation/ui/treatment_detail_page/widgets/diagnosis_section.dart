import 'package:flutter/material.dart';
import 'base_section.dart';

class DiagnosisSection extends StatelessWidget {
  final String symptoms;
  final String diagnosis;

  const DiagnosisSection({
    super.key,
    required this.symptoms,
    required this.diagnosis,
  });

  @override
  Widget build(BuildContext context) {
    return BaseSection(
      title: "Chẩn đoán",
      icon: Icons.health_and_safety_rounded,
      color: const Color(0xFF0075FF),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInfo("Triệu chứng:", symptoms),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Divider(height: 1, color: Color(0xFFF4F4F4)),
          ),
          _buildInfo("Kết luận:", diagnosis, isPrimary: true),
        ],
      ),
    );
  }

  Widget _buildInfo(String label, String value, {bool isPrimary = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Color(0xFF8D969E),
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            fontSize: 15,
            fontWeight: isPrimary ? FontWeight.w700 : FontWeight.w500,
            color: const Color(0xFF191C1F),
          ),
        ),
      ],
    );
  }
}
