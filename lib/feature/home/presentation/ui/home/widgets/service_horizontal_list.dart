import 'package:flutter/material.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/feature/services/application/constants/route_constants.dart';

class ServiceHorizontalList extends StatelessWidget {
  final List<ServiceEntity> services;

  const ServiceHorizontalList({super.key, required this.services});

  String _formatPrice(double price) {
    return "${price.toInt().toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}đ";
  }

  @override
  Widget build(BuildContext context) {
    const String placeholderUrl =
        "https://static.vecteezy.com/system/resources/thumbnails/012/025/461/small/health-insurance-concept-big-clipboard-with-document-on-it-under-the-umbrella-healthcare-finance-and-medical-service-vector.jpg";

    return MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(textScaler: const TextScaler.linear(1.0)),
      child: SizedBox(
        height: 240,
        child: services.isEmpty
            ? const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Color(0xFF0075FF),
                ),
              )
            : ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                itemCount: services.length,
                itemBuilder: (context, index) {
                  final s = services[index];
                  final double rating = s.rating ?? 0.0;

                  final bool isUrlValid =
                      s.image.isNotEmpty &&
                      s.image.startsWith('http') &&
                      s.image.length > 30 &&
                      !s.image.contains('not-found');

                  final String imageUrl = isUrlValid ? s.image : placeholderUrl;

                  return Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      shadowColor: Colors.black.withOpacity(0.05),
                      elevation: 2,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {
                          context.pushNamed(
                            ServiceRoutes.serviceDetailScreen,
                            extra: {'service': s, 'id': s.id},
                          );
                        },
                        child: Container(
                          width: 190,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: const Color(0xFFC9C9CD).withOpacity(0.3),
                              width: 1,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 5,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(20),
                                  ),
                                  child: Image.network(
                                    imageUrl,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                    errorBuilder: (_, __, ___) => Image.network(
                                      placeholderUrl,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Padding(
                                  padding: const EdgeInsets.all(14),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        s.name,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color: Color(0xFF191C1F),
                                          height: 1.3,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Row(
                                        children: [
                                          RatingBarIndicator(
                                            rating: rating,
                                            itemBuilder: (context, index) =>
                                                const Icon(
                                                  Icons.star_rounded,
                                                  color: Colors.amber,
                                                ),
                                            itemCount: 5,
                                            itemSize: 14.0,
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            "$rating",
                                            style: const TextStyle(
                                              fontSize: 11,
                                              color: Color(0xFF0075FF),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        _formatPrice(s.price),
                                        style: const TextStyle(
                                          color: Color(0xFF0075FF),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: -0.2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
