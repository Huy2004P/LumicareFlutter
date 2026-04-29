import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPInputRow extends StatelessWidget {
  final TextEditingController controller;
  final bool isCountdownActive;
  final int countdown;
  final VoidCallback onSendCode;

  const OTPInputRow({
    super.key,
    required this.controller,
    required this.isCountdownActive,
    required this.countdown,
    required this.onSendCode,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: controller,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(6),
            ],
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              letterSpacing: 2,
            ),
            decoration: InputDecoration(
              labelText: "Mã OTP",
              labelStyle: const TextStyle(
                color: Color(0xFF8D969E),
                fontSize: 14,
              ),
              filled: true,
              fillColor: const Color(0xFFF4F4F4),
              prefixIcon: const Icon(
                Icons.pin_outlined,
                color: Color(0xFF191C1F),
                size: 20,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Color(0xFF0075FF),
                  width: 1.5,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        SizedBox(
          height: 54,
          child: ElevatedButton(
            onPressed: isCountdownActive ? null : onSendCode,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF0075FF).withOpacity(0.1),
              foregroundColor: const Color(0xFF0075FF),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
            ),
            child: Text(
              isCountdownActive ? "${countdown}s" : "Gửi mã",
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ],
    );
  }
}
