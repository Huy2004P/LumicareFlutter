import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/feature/services/application/constants/route_constants.dart';

class ServiceCard extends StatelessWidget {
  final dynamic item;
  final String specialtyName;

  const ServiceCard({
    super.key,
    required this.item,
    required this.specialtyName,
  });

  @override
  Widget build(BuildContext context) {
    final double rating = item.rating ?? 5.0;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFC9C9CD).withOpacity(0.4)),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              item.image.length > 25
                  ? item.image
                  : "https://via.placeholder.com/150",
              width: 84,
              height: 84,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                width: 84,
                height: 84,
                color: const Color(0xFFF4F4F4),
                child: const Icon(
                  Icons.image_not_supported_rounded,
                  color: Color(0xFFC9C9CD),
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Color(0xFF191C1F),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  specialtyName,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF0075FF),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    RatingBarIndicator(
                      rating: rating,
                      itemBuilder: (context, index) =>
                          const Icon(Icons.star_rounded, color: Colors.amber),
                      itemCount: 5,
                      itemSize: 14.0,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      rating.toStringAsFixed(1),
                      style: const TextStyle(
                        fontSize: 11,
                        color: Color(0xFF505A63),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Text(
                  "${NumberFormat("#,###").format(item.price)}đ",
                  style: const TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () {
              context.pushNamed(
                ServiceRoutes.serviceDetailScreen,
                extra: {'service': item, 'specialtyName': specialtyName},
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: const Color(0xFF0075FF),
                borderRadius: BorderRadius.circular(9999),
              ),
              child: const Text(
                "Đặt",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
