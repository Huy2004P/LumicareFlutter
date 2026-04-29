import 'package:flutter/material.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/feature/services/application/constants/route_constants.dart';

class PromoBanner extends StatelessWidget {
  final ServiceEntity? featuredService;

  const PromoBanner({super.key, this.featuredService});

  @override
  Widget build(BuildContext context) {
    if (featuredService == null) return const SizedBox.shrink();

    return MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(textScaler: const TextScaler.linear(1.0)),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFFF4F4F4),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: const Color(0xFFC9C9CD).withOpacity(0.4),
            width: 1,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Positioned(
                right: -40,
                bottom: -40,
                child: Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        const Color(
                          0xFF0075FF,
                          // ignore: deprecated_member_use
                        ).withOpacity(0.15), // Sky Blue nhạt
                        // ignore: deprecated_member_use
                        const Color(0xFF0075FF).withOpacity(0.0),
                      ],
                    ),
                  ),
                ),
              ),

              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    context.pushNamed(
                      ServiceRoutes.serviceDetailScreen,
                      extra: {
                        'service': featuredService,
                        'specialtyName': 'Dịch vụ nổi bật',
                      },
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(28), // Padding rộng rãi
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "NEW SERVICE",
                          style: TextStyle(
                            color: Color(0xFF505A63),
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.2,
                          ),
                        ),
                        const SizedBox(height: 12),

                        Flexible(
                          child: Text(
                            featuredService!.name.toUpperCase(),
                            style: const TextStyle(
                              color: Color(0xFF191C1F),
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.8,
                              height: 1.1,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(height: 24),

                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFF0075FF),
                            borderRadius: BorderRadius.circular(9999),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "TÌM HIỂU THÊM",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 8),
                              Icon(
                                Icons.arrow_forward_rounded,
                                size: 14,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
