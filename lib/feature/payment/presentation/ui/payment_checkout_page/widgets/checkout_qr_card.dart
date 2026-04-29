import 'package:flutter/material.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class CheckoutQRCard extends StatelessWidget {
  final PaymentInstructionEntity? instruction;
  const CheckoutQRCard({super.key, this.instruction});

  @override
  Widget build(BuildContext context) {
    if (instruction == null) {
      return const SizedBox(
        height: 320,
        child: Center(
          child: CircularProgressIndicator(color: Color(0xFF0075FF)),
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 30,
            offset: const Offset(0, 12),
          ),
        ],
        border: Border.all(color: const Color(0xFFF1F5F9), width: 2),
      ),
      child: Column(
        children: [
          const Text(
            "QUÉT MÃ ĐỂ THANH TOÁN",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w800,
              color: Color(0xFF64748B),
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 24),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              instruction!.qrUrl,
              width: 240,
              height: 240,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            instruction!.message,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color(0xFF191C1F),
            ),
          ),
        ],
      ),
    );
  }
}
