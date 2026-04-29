import 'package:flutter/material.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class FeedbackHorizontalList extends StatelessWidget {
  final List<FeedbackItemEntity> feedbacks;

  const FeedbackHorizontalList({super.key, required this.feedbacks});

  String _formatDateTime(String isoString) {
    try {
      DateTime dt = DateTime.parse(isoString).toLocal();
      return "${dt.day}/${dt.month}/${dt.year}";
    } catch (e) {
      return "RECENT";
    }
  }

  @override
  Widget build(BuildContext context) {
    if (feedbacks.isEmpty) return _buildEmptyState();

    return MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(textScaler: const TextScaler.linear(1.0)),
      child: SizedBox(
        height: 240, // Tăng nhẹ không gian cho card phẳng
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ), // Padding lề lớn chuẩn Revolut
          itemCount: feedbacks.length,
          itemBuilder: (context, index) {
            final fb = feedbacks[index];

            return Container(
              width: 320,
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.all(24), // Padding rộng rãi hơn
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  20,
                ), // Revolut Radius (20px)
                border: Border.all(
                  color: const Color(
                    0xFFC9C9CD,
                    // ignore: deprecated_member_use
                  ).withOpacity(0.5), // Border mảnh, zero shadow
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // --- PHẦN 1: HEADER (USER INFO) ---
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF4F4F4), // Light Surface
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            fb.patientName.isNotEmpty
                                ? fb.patientName[0].toUpperCase()
                                : "P",
                            style: const TextStyle(
                              color: Color(0xFF191C1F),
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              fb.patientName,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontWeight:
                                    FontWeight.w500, // Medium 500 Aeonik Style
                                fontSize: 16,
                                color: Color(0xFF191C1F), // Revolut Dark
                                letterSpacing: -0.4,
                              ),
                            ),
                            Text(
                              _formatDateTime(fb.createdAt),
                              style: const TextStyle(
                                color: Color(0xFF505A63), // Mid Slate
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      _buildStatusTag(),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // --- PHẦN 2: RATING GRID (CLEAN & SKY BLUE ACCENT) ---
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 14,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF4F4F4),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildRatingItem("DOCTOR", fb.ratingDoctor),
                        _buildRatingItem("CLINIC", fb.ratingClinic),
                        _buildRatingItem("SERVICE", fb.ratingService),
                        _buildRatingItem("APP", fb.ratingBooking),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  // --- PHẦN 3: COMMENT ---
                  Expanded(
                    child: Text(
                      fb.comment,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Color(0xFF191C1F),
                        fontSize: 14,
                        height: 1.4,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.1, // Body text thoáng hơn
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildRatingItem(String label, int score) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 7,
            color: Color(0xFF505A63),
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Text(
              "$score",
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF0075FF), // Tone Sky Blue chủ đạo
              ),
            ),
            const Icon(Icons.star_rounded, color: Colors.amber, size: 12),
          ],
        ),
      ],
    );
  }

  Widget _buildStatusTag() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: const Color(0xFF0075FF).withOpacity(0.1), // Sky Blue nền nhạt
        borderRadius: BorderRadius.circular(9999), // Pill shape
      ),
      child: const Row(
        children: [
          Icon(Icons.verified_rounded, color: Color(0xFF0075FF), size: 12),
          SizedBox(width: 4),
          Text(
            "VERIFIED",
            style: TextStyle(
              color: Color(0xFF0075FF),
              fontSize: 9,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Container(
      height: 120,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFF4F4F4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.chat_bubble_outline_rounded,
            color: Color(0xFF505A63),
            size: 24,
          ),
          SizedBox(height: 8),
          Text(
            "NO FEEDBACK YET",
            style: TextStyle(
              color: Color(0xFF505A63),
              fontSize: 10,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
