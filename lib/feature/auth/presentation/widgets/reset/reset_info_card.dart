import 'package:flutter/material.dart';

class ResetInfoCard extends StatelessWidget {
  final String email;
  const ResetInfoCard({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF0075FF).withOpacity(0.06),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF0075FF).withOpacity(0.1)),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.alternate_email_rounded,
            size: 20,
            color: Color(0xFF0075FF),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              email,
              style: const TextStyle(
                fontWeight: FontWeight.w800,
                color: Color(0xFF0075FF),
                fontSize: 14,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
