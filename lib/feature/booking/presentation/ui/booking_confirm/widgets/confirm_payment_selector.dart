import 'package:flutter/material.dart';

class ConfirmPaymentSelector extends StatelessWidget {
  final String selectedMethod;
  final Function(String) onChanged;

  const ConfirmPaymentSelector({
    super.key,
    required this.selectedMethod,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildItem(
          'PAY1',
          "Thanh toán trực tiếp",
          "Tiền mặt trực tiếp",
          Icons.payments_outlined,
        ),
        const Divider(height: 1, color: Color(0xFFF4F4F4)),
        _buildItem(
          'PAY3',
          "Chuyển khoản VietQR",
          "Quét mã QR Ngân hàng",
          Icons.qr_code_scanner_rounded,
        ),
      ],
    );
  }

  Widget _buildItem(String val, String title, String sub, IconData icon) {
    final isSelected = selectedMethod == val;
    return RadioListTile<String>(
      value: val,
      groupValue: selectedMethod,
      onChanged: (v) => onChanged(v!),
      activeColor: const Color(0xFF0075FF),
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14,
          color: isSelected ? const Color(0xFF0075FF) : const Color(0xFF191C1F),
        ),
      ),
      subtitle: Text(
        sub,
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
      ),
      secondary: Icon(
        icon,
        color: isSelected ? const Color(0xFF0075FF) : const Color(0xFF8D969E),
      ),
    );
  }
}
