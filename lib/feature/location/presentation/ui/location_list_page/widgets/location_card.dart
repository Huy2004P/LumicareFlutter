import 'package:flutter/material.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class LocationCard extends StatelessWidget {
  final LocationEntity location;
  final VoidCallback onTap;
  final VoidCallback onDelete;

  const LocationCard({
    super.key,
    required this.location,
    required this.onTap,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final bool isHome = location.label.toLowerCase().contains("nhà");

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: location.isDefault
              ? const Color(0xFF0075FF)
              : const Color(0xFFF4F4F4),
          width: 1.5,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: const Color(0xFFF4F4F4),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  isHome ? Icons.home_rounded : Icons.work_rounded,
                  color: const Color(0xFF0075FF),
                  size: 24,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          location.label,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            color: Color(0xFF191C1F),
                          ),
                        ),
                        const SizedBox(width: 8),
                        if (location.isDefault)
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFF0075FF).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: const Text(
                              "MẶC ĐỊNH",
                              style: TextStyle(
                                color: Color(0xFF0075FF),
                                fontSize: 9,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      location.addressDetail,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Color(0xFF505A63),
                        height: 1.4,
                      ),
                    ),
                    Text(
                      "${location.ward}, ${location.district}, ${location.province}",
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF8D969E),
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.delete_outline_rounded,
                  color: Color(0xFFE23B4A),
                  size: 20,
                ),
                onPressed: onDelete,
                constraints: const BoxConstraints(),
                padding: EdgeInsets.zero,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
