import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class DoctorCard extends StatelessWidget {
  final DoctorEntity doctor;
  const DoctorCard({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    final fmt = NumberFormat.currency(locale: 'vi', symbol: 'đ');
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: const Color(0xFFF4F4F4), width: 1.5),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color(0xFF0075FF), Color(0xFF00C2FF)],
                  ),
                ),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  backgroundImage: doctor.avatar.isNotEmpty
                      ? NetworkImage(doctor.avatar)
                      : null,
                  child: doctor.avatar.isEmpty
                      ? const Icon(
                          Icons.person,
                          color: Color(0xFF0075FF),
                          size: 30,
                        )
                      : null,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctor.fullName,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF191C1F),
                      ),
                    ),
                    Text(
                      "${doctor.position} • ${doctor.specialtyName}",
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF0075FF),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        RatingBarIndicator(
                          rating: doctor.rating,
                          itemCount: 5,
                          itemSize: 14,
                          itemBuilder: (ctx, i) => const Icon(
                            Icons.star_rounded,
                            color: Colors.amber,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          doctor.rating.toStringAsFixed(1),
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF8D969E),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(height: 24, color: Color(0xFFF4F4F4)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Giá khám dự kiến",
                    style: TextStyle(
                      fontSize: 10,
                      color: Color(0xFF8D969E),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    fmt.format(doctor.price),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFFE23B4A),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () => Navigator.pop(context, doctor),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0075FF),
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                ),
                child: const Text(
                  "CHỌN",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
