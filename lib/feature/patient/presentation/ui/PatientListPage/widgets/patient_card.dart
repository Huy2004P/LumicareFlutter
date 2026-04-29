import 'package:flutter/material.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class PatientCard extends StatelessWidget {
  final PatientProfileEntity profile;
  final bool isSelected;
  final VoidCallback onTap;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const PatientCard({
    super.key,
    required this.profile,
    required this.isSelected,
    required this.onTap,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final bool isMale = profile.gender.toLowerCase().contains('nam');

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? const Color(0xFF0075FF) : const Color(0xFFF4F4F4),
          width: 1.5,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color: isMale
                      // ignore: deprecated_member_use
                      ? const Color(0xFF0075FF).withOpacity(0.1)
                      // ignore: deprecated_member_use
                      : Colors.pink.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  isMale ? Icons.person_rounded : Icons.person_3_rounded,
                  color: isMale ? const Color(0xFF0075FF) : Colors.pink,
                  size: 28,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profile.fullName,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Color(0xFF191C1F),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "${profile.birthday.split('-').reversed.join('/')} • ${profile.relationship}",
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF505A63),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.edit_note_rounded,
                      color: Color(0xFF0075FF),
                      size: 22,
                    ),
                    onPressed: onEdit,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.delete_outline_rounded,
                      color: Colors.redAccent,
                      size: 20,
                    ),
                    onPressed: onDelete,
                  ),
                  if (isSelected)
                    const Icon(
                      Icons.check_circle_rounded,
                      color: Color(0xFF0075FF),
                      size: 20,
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
