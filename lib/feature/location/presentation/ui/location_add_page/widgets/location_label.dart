import 'package:flutter/material.dart';

class LocationLabel extends StatelessWidget {
  final String label;
  const LocationLabel({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 12),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w800,
          color: Color(0xFF8D969E),
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
