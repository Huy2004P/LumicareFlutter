import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class DoctorHeader extends StatelessWidget {
  final DoctorEntity doctor;
  const DoctorHeader({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 32),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(32)),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundColor: const Color(0xFF0075FF).withOpacity(0.1),
            backgroundImage: NetworkImage(doctor.avatar),
          ),
          const SizedBox(height: 20),
          Text(
            doctor.fullName,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w800,
              color: Color(0xFF191C1F),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RatingBarIndicator(
                rating: doctor.rating,
                itemBuilder: (context, index) =>
                    const Icon(Icons.star_rounded, color: Colors.amber),
                itemCount: 5,
                itemSize: 20,
              ),
              const SizedBox(width: 8),
              Text(
                doctor.rating.toStringAsFixed(1),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF191C1F),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFF0075FF).withOpacity(0.08),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              doctor.position.toUpperCase(),
              style: const TextStyle(
                fontSize: 11,
                color: Color(0xFF0075FF),
                fontWeight: FontWeight.w800,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
