import 'package:flutter/material.dart';

class DoctorClinicCard extends StatelessWidget {
  final String clinicName;
  final String roomName;
  const DoctorClinicCard({
    super.key,
    required this.clinicName,
    required this.roomName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF0075FF).withOpacity(0.05),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: const Color(0xFF0075FF).withOpacity(0.1)),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.location_on_rounded,
            color: Color(0xFF0075FF),
            size: 28,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "NƠI CÔNG TÁC",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF8D969E),
                  ),
                ),
                Text(
                  clinicName,
                  style: const TextStyle(
                    color: Color(0xFF191C1F),
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
                Text(
                  roomName,
                  style: const TextStyle(
                    color: Color(0xFF0075FF),
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
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
