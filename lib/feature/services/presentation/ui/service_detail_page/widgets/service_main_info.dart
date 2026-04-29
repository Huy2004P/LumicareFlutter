import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import 'package:lumi_care/feature/booking/application/constants/route_constants.dart';

class ServiceMainInfo extends StatelessWidget {
  final ServiceEntity service;
  final String specialtyName;

  const ServiceMainInfo({
    super.key,
    required this.service,
    required this.specialtyName,
  });

  @override
  Widget build(BuildContext context) {
    final currencyFormat = NumberFormat.currency(locale: 'vi', symbol: 'đ');
    final double rating = service.rating ?? 5.0;

    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFF4F4F4), width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildBadge(specialtyName.toUpperCase()),
              Text(
                currencyFormat.format(service.price),
                style: const TextStyle(
                  color: Color(0xFF191C1F),
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.5,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            service.name,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color(0xFF191C1F),
              height: 1.2,
              letterSpacing: -0.8,
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
                itemSize: 20.0,
              ),
              const SizedBox(width: 8),
              Text(
                rating.toStringAsFixed(1),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF505A63),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          // Pill Button Style
          SizedBox(
            width: double.infinity,
            height: 54,
            child: ElevatedButton(
              onPressed: () => context.pushNamed(
                BookingRoutes.bookingScreen,
                extra: service.id,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0075FF),
                foregroundColor: Colors.white,
                elevation: 0,
                shape: const StadiumBorder(),
              ),
              child: const Text(
                "ĐẶT LỊCH NGAY",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            service.description,
            style: const TextStyle(
              color: Color(0xFF505A63),
              height: 1.5,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBadge(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFF0075FF).withOpacity(0.1),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Color(0xFF0075FF),
          fontWeight: FontWeight.w700,
          fontSize: 10,
        ),
      ),
    );
  }
}
