import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import 'package:lumi_care/feature/specialty/application/constants/route_constants.dart';

class SpecialtyGrid extends StatelessWidget {
  final List<SpecialtyEntity> specialties;

  const SpecialtyGrid({super.key, required this.specialties});

  @override
  Widget build(BuildContext context) {
    if (specialties.isEmpty) {
      return const SliverToBoxAdapter(child: SizedBox.shrink());
    }

    return MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(textScaler: const TextScaler.linear(1.0)),
      child: SliverToBoxAdapter(
        child: SizedBox(
          height: 130, // Chiều cao tối ưu cho vòng tròn 72px + text
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ), // Padding lề lớn chuẩn Revolut
            itemCount: specialties.length,
            itemBuilder: (context, index) {
              final s = specialties[index];
              return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SpecialtyCircleCard(
                  specialty: s,
                  onTap: () => context.pushNamed(
                    SpecialtyRoutes.specialtyDetailScreen,
                    extra: s.id,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class SpecialtyCircleCard extends StatelessWidget {
  final SpecialtyEntity specialty;
  final VoidCallback onTap;

  const SpecialtyCircleCard({
    super.key,
    required this.specialty,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // --- STYLE REVOLUT: FLAT CIRCLE WITH LIGHT SURFACE ---
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              color: const Color(0xFFF4F4F4), // Light Surface thay cho Shadow
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(
                  0xFFC9C9CD,
                  // ignore: deprecated_member_use
                ).withOpacity(0.3), // Border cực mảnh
                width: 1,
              ),
            ),
            child: ClipOval(
              child:
                  (specialty.image.isNotEmpty &&
                      specialty.image.startsWith('http'))
                  ? Image.network(
                      specialty.image,
                      fit: BoxFit.cover, // Ảnh tràn đầy vòng tròn sắc nét
                      errorBuilder: (_, __, ___) => _buildPlaceholder(),
                    )
                  : _buildPlaceholder(),
            ),
          ),
          const SizedBox(height: 12),

          // --- LABEL: INTER MEDIUM (NORMAL CASE) ---
          SizedBox(
            width: 85,
            child: Text(
              specialty.name,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500, // Revolut Medium Style
                color: Color(0xFF191C1F), // Revolut Dark Text
                height: 1.2,
                letterSpacing: 0.1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlaceholder() {
    return const Center(
      child: Icon(
        Icons.local_hospital_rounded,
        color: Color(0xFF0075FF), // Sky Blue chủ đạo
        size: 30,
      ),
    );
  }
}
