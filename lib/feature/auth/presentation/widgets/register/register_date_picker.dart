import 'package:flutter/material.dart';

class RegisterDatePicker extends StatelessWidget {
  final DateTime? selectedDate;
  final VoidCallback onTap;

  const RegisterDatePicker({
    super.key,
    required this.selectedDate,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "NGÀY SINH",
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w800,
            color: Color(0xFF8D969E),
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
            decoration: BoxDecoration(
              color: const Color(0xFFF4F7F9),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.cake_outlined,
                  color: Color(0xFF191C1F),
                  size: 20,
                ),
                const SizedBox(width: 12),
                Text(
                  selectedDate == null
                      ? "Chọn ngày sinh"
                      : "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}",
                  style: TextStyle(
                    color: selectedDate == null
                        ? Colors.grey.shade400
                        : const Color(0xFF191C1F),
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
