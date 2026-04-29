import 'package:flutter/material.dart';

class PaymentStatusPage extends StatelessWidget {
  final bool isSuccess;

  const PaymentStatusPage({super.key, required this.isSuccess});

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = isSuccess ? Colors.green : Colors.redAccent;
    final String title = isSuccess
        ? "Thanh toán thành công!"
        : "Thanh toán thất bại";
    final String subtitle = isSuccess
        ? "Yêu cầu của bạn đã được ghi nhận. Vui lòng đợi hệ thống xác nhận trong giây lát."
        : "Giao dịch không thành công hoặc bị hủy. Vui lòng thử lại hoặc liên hệ hỗ trợ.";

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),

              // 1. 🎨 ICON TRẠNG THÁI
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: primaryColor.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  isSuccess ? Icons.check_circle_rounded : Icons.error_rounded,
                  size: 100,
                  color: primaryColor,
                ),
              ),

              const SizedBox(height: 30),

              // 2. 📝 NỘI DUNG THÔNG BÁO
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 16),

              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade600,
                  height: 1.5,
                ),
              ),

              const Spacer(),

              // 3. 🚀 NÚT ĐIỀU HƯỚNG
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    // 🎯 Quay về trang chủ hoặc Lịch sử đặt lịch
                    // Nếu dùng GoRouter: context.go(HomePath.root);
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isSuccess
                        ? Colors.blue.shade700
                        : Colors.black87,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    "Về trang chủ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              if (!isSuccess) ...[
                const SizedBox(height: 12),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    "Thử lại",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
