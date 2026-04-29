import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsCard extends StatelessWidget {
  final dynamic article;
  const NewsCard({super.key, required this.article});

  Future<void> _launchURL() async {
    final String? url = article.url;
    if (url == null || url.isEmpty) return;

    final Uri uri = Uri.parse(url);

    try {
      if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
        throw Exception('Không thể mở liên kết: $url');
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFC9C9CD).withOpacity(0.4)),
      ),
      child: InkWell(
        onTap: _launchURL,
        borderRadius: BorderRadius.circular(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: Image.network(
                article.urlToImage ?? "",
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  height: 180,
                  color: const Color(0xFFF4F4F4),
                  child: const Icon(
                    Icons.image_not_supported_rounded,
                    color: Color(0xFFC9C9CD),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      _buildPillTag("Y TẾ"),
                      const Spacer(),
                      const Icon(
                        Icons.access_time_rounded,
                        size: 14,
                        color: Color(0xFF8D969E),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        _formatDate(article.publishedAt),
                        style: const TextStyle(
                          fontSize: 11,
                          color: Color(0xFF8D969E),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    article.title ?? "",
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF191C1F),
                      height: 1.3,
                      letterSpacing: -0.4,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    article.description ??
                        "Chi tiết kiến thức chăm sóc sức khỏe...",
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF505A63),
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    children: [
                      Text(
                        "Đọc tiếp",
                        style: TextStyle(
                          color: Color(0xFF0075FF),
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Icons.arrow_forward_rounded,
                        size: 14,
                        color: Color(0xFF0075FF),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPillTag(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFF0075FF).withOpacity(0.08),
        borderRadius: BorderRadius.circular(9999),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Color(0xFF0075FF),
          fontSize: 9,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  String _formatDate(String? dateStr) {
    if (dateStr == null) return "Gần đây";
    try {
      return DateFormat('dd/MM/yyyy').format(DateTime.parse(dateStr));
    } catch (_) {
      return dateStr;
    }
  }
}
