import 'package:flutter/material.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class BookingPatientPicker extends StatelessWidget {
  final PatientProfileEntity? patient;
  final VoidCallback onTap;
  const BookingPatientPicker({super.key, this.patient, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xFFF4F4F4), width: 1.5),
        ),
        child: Row(
          children: [
            const CircleAvatar(
              backgroundColor: Color(0xFFF4F4F4),
              child: Icon(Icons.person_rounded, color: Color(0xFF0075FF)),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    patient?.fullName ?? "Chọn hồ sơ người bệnh",
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    patient != null
                        ? "Quan hệ: ${patient!.relationship}"
                        : "Vui lòng chọn người cần khám",
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF505A63),
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 14,
              color: Color(0xFF8D969E),
            ),
          ],
        ),
      ),
    );
  }
}
