import 'package:flutter/material.dart';
import '../bloc/payment_checkout_state.dart';

class CheckoutLiveStatus extends StatelessWidget {
  final PaymentCheckoutStatus status;
  const CheckoutLiveStatus({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final bool isPaid =
        status == PaymentCheckoutStatus.confirmed ||
        status == PaymentCheckoutStatus.confirming ||
        status == PaymentCheckoutStatus.success;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      decoration: BoxDecoration(
        color: isPaid ? const Color(0xFFE8F5E9) : const Color(0xFFF8FAFC),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isPaid
              ? Colors.green.withOpacity(0.3)
              : const Color(0xFFE2E8F0),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          isPaid
              ? const Icon(
                  Icons.check_circle_rounded,
                  color: Colors.green,
                  size: 24,
                )
              : const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2.5,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Color(0xFF0075FF),
                    ),
                  ),
                ),
          const SizedBox(width: 16),
          Text(
            isPaid ? "GIAO DỊCH THÀNH CÔNG" : "ĐANG QUÉT GIAO DỊCH...",
            style: TextStyle(
              color: isPaid ? Colors.green.shade700 : const Color(0xFF64748B),
              fontSize: 13,
              fontWeight: FontWeight.w800,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
