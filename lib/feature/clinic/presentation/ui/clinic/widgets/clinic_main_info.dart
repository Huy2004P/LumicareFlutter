import 'package:flutter/material.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ClinicMainInfoCard extends StatelessWidget {
  final ClinicEntity clinic;
  const ClinicMainInfoCard({super.key, required this.clinic});

  @override
  Widget build(BuildContext context) {
    final double rating = clinic.rating;

    return Container(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFF0D47A1).withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.business_rounded,
                  color: Color(0xFF0D47A1),
                  size: 20,
                ),
              ),
              const Icon(
                Icons.verified_rounded,
                color: Color(0xFF45C3D2),
                size: 22,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            clinic.name,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2D3142),
              height: 1.3,
            ),
          ),

          const SizedBox(height: 12),
          Row(
            children: [
              RatingBarIndicator(
                rating: rating,
                itemBuilder: (context, index) =>
                    const Icon(Icons.star_rounded, color: Colors.amber),
                itemCount: 5,
                itemSize: 20.0, // Size to rõ ràng cho trang Detail
                direction: Axis.horizontal,
              ),
              const SizedBox(width: 8),
              Text(
                rating.toStringAsFixed(1),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700,
                ),
              ),
              Text(
                " / 5.0",
                style: TextStyle(fontSize: 14, color: Colors.grey.shade400),
              ),
            ],
          ),

          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.location_on_rounded,
                color: Colors.redAccent,
                size: 18,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  clinic.address,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
