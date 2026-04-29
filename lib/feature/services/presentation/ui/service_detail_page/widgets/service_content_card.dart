import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class ServiceContentCard extends StatelessWidget {
  final String title;
  final String content;

  const ServiceContentCard({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFF4F4F4), width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xFF191C1F),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Divider(height: 1, color: Color(0xFFF4F4F4)),
          ),
          MarkdownBody(
            data: content.isNotEmpty
                ? content
                : "Nội dung đang được cập nhật...",
            styleSheet: MarkdownStyleSheet(
              p: const TextStyle(
                color: Color(0xFF505A63),
                height: 1.6,
                fontSize: 15,
              ),
              strong: const TextStyle(
                fontWeight: FontWeight.w700,
                color: Color(0xFF191C1F),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
