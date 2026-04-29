import 'package:flutter/material.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class BookingDoctorCard extends StatelessWidget {
  final DoctorEntity? doctor;
  final VoidCallback onTap;
  const BookingDoctorCard({super.key, this.doctor, required this.onTap});

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
        child: doctor == null
            ? const Center(
                child: Text(
                  "Bấm để chọn chuyên gia",
                  style: TextStyle(
                    color: Color(0xFF0075FF),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            : Row(
                children: [
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: const Color(0xFFF4F4F4),
                    backgroundImage: doctor!.avatar.isNotEmpty
                        ? NetworkImage(doctor!.avatar)
                        : null,
                    child: doctor!.avatar.isEmpty
                        ? const Icon(Icons.person_rounded)
                        : null,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          doctor!.fullName,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          doctor!.specialtyName,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xFF0075FF),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.cached_rounded, color: Color(0xFF8D969E)),
                ],
              ),
      ),
    );
  }
}
