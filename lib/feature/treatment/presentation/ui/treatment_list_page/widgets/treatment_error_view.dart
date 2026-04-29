import 'package:flutter/material.dart';

class TreatmentErrorView extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const TreatmentErrorView({
    super.key,
    required this.message,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.cloud_off_rounded,
            size: 70,
            color: Colors.redAccent,
          ),
          const SizedBox(height: 20),
          Text(
            message,
            style: const TextStyle(
              color: Colors.blueGrey,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 30),
          TextButton(
            onPressed: onRetry,
            child: const Text(
              "Tải lại trang",
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
          ),
        ],
      ),
    );
  }
}
