import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ConfirmPriceBox extends StatelessWidget {
  final double totalPrice;
  const ConfirmPriceBox({super.key, required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    final fmt = NumberFormat.currency(locale: 'vi', symbol: 'đ');
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF0075FF).withOpacity(0.05),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: const Color(0xFF0075FF).withOpacity(0.1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "TỔNG THANH TOÁN",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 13,
              color: Color(0xFF191C1F),
            ),
          ),
          Text(
            fmt.format(totalPrice),
            style: const TextStyle(
              color: Color(0xFFE23B4A),
              fontWeight: FontWeight.w900,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
