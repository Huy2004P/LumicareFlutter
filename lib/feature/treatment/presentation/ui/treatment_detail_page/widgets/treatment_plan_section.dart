import 'package:flutter/material.dart';
import 'base_section.dart';

class TreatmentPlanSection extends StatelessWidget {
  final String plan;
  const TreatmentPlanSection({super.key, required this.plan});

  @override
  Widget build(BuildContext context) {
    return BaseSection(
      title: "Lời dặn bác sĩ",
      icon: Icons.assignment_ind_rounded,
      color: Colors.orange,
      child: Text(
        plan,
        style: const TextStyle(
          fontSize: 14,
          color: Color(0xFF505A63),
          height: 1.5,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
