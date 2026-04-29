import 'package:flutter/material.dart';
import '../bloc/payment_checkout_state.dart';

class CheckoutActionButton extends StatelessWidget {
  final PaymentCheckoutStatus status;
  final VoidCallback onPressed;

  const CheckoutActionButton({
    super.key,
    required this.status,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final bool hasSignal = status == PaymentCheckoutStatus.confirmed;
    final bool isFinalizing = status == PaymentCheckoutStatus.confirming;

    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: (hasSignal || isFinalizing)
              ? Colors.green
              : const Color(0xFF191C1F),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          elevation: 0,
        ),
        onPressed: (hasSignal && !isFinalizing) ? onPressed : null,
        child: isFinalizing
            ? const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2,
                ),
              )
            : Text(
                hasSignal ? "XÁC NHẬN ĐẶT LỊCH NGAY" : "ĐANG CHỜ THANH TOÁN...",
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 14,
                  letterSpacing: 1.1,
                ),
              ),
      ),
    );
  }
}
