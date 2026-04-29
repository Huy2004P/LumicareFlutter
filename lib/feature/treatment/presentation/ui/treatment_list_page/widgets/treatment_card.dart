import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/feature/treatment/application/constants/route_constants.dart';

class TreatmentCard extends StatelessWidget {
  final dynamic record;

  const TreatmentCard({super.key, required this.record});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFF4F4F4), width: 1.5),
      ),
      child: InkWell(
        onTap: () => context.pushNamed(
          TreatmentRoutes.treatmentDetailScreen,
          extra: record.bookingId,
        ),
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDateHeader(record.examDate),
              const SizedBox(height: 16),
              Text(
                "${record.doctorName}",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF191C1F),
                  letterSpacing: -0.5,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                record.specialtyName,
                style: const TextStyle(
                  fontSize: 13,
                  color: Color(0xFF0075FF),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Divider(height: 1, color: Color(0xFFF4F4F4)),
              ),
              _buildDiagnosisRow(record.diagnosis),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDateHeader(String date) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: const Color(0xFF0075FF).withOpacity(0.1),
            borderRadius: BorderRadius.circular(9999),
          ),
          child: Text(
            date,
            style: const TextStyle(
              color: Color(0xFF0075FF),
              fontSize: 11,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        const Icon(
          Icons.arrow_forward_ios_rounded,
          size: 14,
          color: Color(0xFF8D969E),
        ),
      ],
    );
  }

  Widget _buildDiagnosisRow(String diagnosis) {
    return Row(
      children: [
        const Icon(
          Icons.assignment_turned_in_rounded,
          size: 18,
          color: Colors.green,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: RichText(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              style: const TextStyle(fontSize: 14, color: Color(0xFF191C1F)),
              children: [
                const TextSpan(
                  text: "Chẩn đoán: ",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                TextSpan(
                  text: diagnosis,
                  style: const TextStyle(color: Color(0xFF505A63)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
