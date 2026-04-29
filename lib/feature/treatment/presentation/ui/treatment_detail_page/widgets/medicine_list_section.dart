import 'package:flutter/material.dart';
import 'base_section.dart';

class MedicineListSection extends StatelessWidget {
  final List<dynamic> medicines;
  const MedicineListSection({super.key, required this.medicines});

  @override
  Widget build(BuildContext context) {
    return BaseSection(
      title: "Đơn thuốc",
      icon: Icons.medication_rounded,
      color: Colors.teal,
      child: Column(
        children: medicines.isEmpty
            ? [const Text("Không có thuốc chỉ định")]
            : medicines.map((m) => _MedicineCard(m: m)).toList(),
      ),
    );
  }
}

class _MedicineCard extends StatelessWidget {
  final dynamic m;
  const _MedicineCard({required this.m});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF4F4F4),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  m.medicineName,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF191C1F),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  "x${m.quantity}",
                  style: const TextStyle(
                    color: Color(0xFF0075FF),
                    fontWeight: FontWeight.w800,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            m.instruction,
            style: const TextStyle(
              fontSize: 13,
              color: Color(0xFF505A63),
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
