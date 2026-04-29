import 'package:flutter/material.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class FilterSpecialtyGrid extends StatelessWidget {
  final List<SpecialtyEntity> specialties;
  final int? selectedId;
  final Function(int?) onSelect;

  const FilterSpecialtyGrid({
    super.key,
    required this.specialties,
    this.selectedId,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.35,
        ),
        itemCount: specialties.length,
        itemBuilder: (ctx, i) {
          final item = specialties[i];
          final bool isSelected = selectedId == item.id;

          return InkWell(
            onTap: () => onSelect(isSelected ? null : item.id),
            borderRadius: BorderRadius.circular(12),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: isSelected ? const Color(0xFF0075FF) : Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isSelected
                      ? Colors.transparent
                      : const Color(0xFFF4F4F4),
                  width: 1.5,
                ),
              ),
              child: Text(
                item.name,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: isSelected ? FontWeight.w700 : FontWeight.w600,
                  color: isSelected ? Colors.white : const Color(0xFF191C1F),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
