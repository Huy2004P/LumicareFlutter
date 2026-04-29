import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import 'package:lumi_care/feature/clinic/application/constants/route_constants.dart';

class ClinicHorizontalList extends StatelessWidget {
  final List<ClinicEntity> clinics;

  const ClinicHorizontalList({super.key, required this.clinics});

  @override
  Widget build(BuildContext context) {
    if (clinics.isEmpty) return const SizedBox.shrink();

    return MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(textScaler: const TextScaler.linear(1.0)),
      child: SizedBox(
        height: 255,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          itemCount: clinics.length,
          itemBuilder: (context, index) {
            final clinic = clinics[index];
            final double rating = clinic.rating;

            return InkWell(
              onTap: () {
                context.pushNamed(
                  ClinicRoutes.clinicDetailScreen,
                  extra: clinic.id,
                );
              },
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 280,
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    // ignore: deprecated_member_use
                    color: const Color(0xFFC9C9CD).withOpacity(0.5),
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                      child: Image.network(
                        clinic.image,
                        height: 140,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) => _buildPlaceholder(140),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            clinic.name,
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF191C1F),
                              letterSpacing: -0.4,
                              height: 1.2,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              RatingBarIndicator(
                                rating: rating,
                                itemBuilder: (context, index) => const Icon(
                                  Icons.star_rounded,
                                  color:
                                      Colors.amber, // Sao vàng theo ý ông nhen
                                ),
                                itemCount: 5,
                                itemSize: 14.0,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                rating.toStringAsFixed(1),
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(
                                    0xFF0075FF,
                                  ), // Số điểm vẫn giữ tone Blue cho đồng bộ
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            clinic.address,
                            style: const TextStyle(
                              fontSize: 13,
                              color: Color(0xFF505A63),
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.2,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildPlaceholder(double height) {
    return Container(
      height: height,
      width: double.infinity,
      color: const Color(0xFFF4F4F4),
      child: const Icon(
        Icons.business_rounded,
        color: Color(0xFFC9C9CD),
        size: 40,
      ),
    );
  }
}
