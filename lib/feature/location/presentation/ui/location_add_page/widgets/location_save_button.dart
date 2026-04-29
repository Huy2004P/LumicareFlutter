import 'package:flutter/material.dart';

class LocationSaveButton extends StatelessWidget {
  final VoidCallback onTap;
  const LocationSaveButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 12, 24, 32),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Color(0xFFF4F4F4))),
      ),
      child: SizedBox(
        width: double.infinity,
        height: 56,
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF0075FF),
            foregroundColor: Colors.white,
            elevation: 0,
            shape: const StadiumBorder(),
          ),
          child: const Text(
            "LƯU ĐỊA CHỈ",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              letterSpacing: 0.8,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
