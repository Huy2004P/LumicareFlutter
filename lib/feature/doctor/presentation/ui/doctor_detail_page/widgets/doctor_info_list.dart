import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class DoctorInfoList extends StatelessWidget {
  final DoctorEntity doctor;
  const DoctorInfoList({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    final formatCurrency = NumberFormat.currency(locale: 'vi', symbol: 'đ');
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          _buildRow(
            Icons.medical_services_rounded,
            "Chuyên khoa",
            doctor.specialtyName,
            const Color(0xFF0075FF),
          ),
          const Divider(height: 1, indent: 70),
          _buildRow(
            Icons.payments_rounded,
            "Phí khám",
            formatCurrency.format(doctor.price),
            const Color(0xFF43A047),
          ),
          const Divider(height: 1, indent: 70),
          _buildRow(
            Icons.phone_android_rounded,
            "Liên hệ",
            doctor.phone,
            Colors.orange,
          ),
        ],
      ),
    );
  }

  Widget _buildRow(IconData icon, String label, String value, Color color) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: color, size: 20),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    color: Color(0xFF8D969E),
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF191C1F),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
