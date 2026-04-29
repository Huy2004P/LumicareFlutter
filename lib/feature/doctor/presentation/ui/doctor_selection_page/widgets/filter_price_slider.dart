import 'package:flutter/material.dart';

class FilterPriceSlider extends StatelessWidget {
  final RangeValues values;
  final Function(RangeValues) onChanged;

  const FilterPriceSlider({
    super.key,
    required this.values,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "KHOẢNG GIÁ KHÁM",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w800,
                color: Color(0xFF8D969E),
                letterSpacing: 0.5,
              ),
            ),
            Text(
              "${values.start.toInt() ~/ 1000}k - ${values.end.toInt() ~/ 1000}k",
              style: const TextStyle(
                color: Color(0xFF0075FF),
                fontWeight: FontWeight.w900,
                fontSize: 13,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: const Color(0xFF0075FF),
            inactiveTrackColor: const Color(0xFFF4F4F4),
            trackHeight: 6,
            thumbColor: Colors.white,
            rangeThumbShape: const RoundRangeSliderThumbShape(
              enabledThumbRadius: 10,
              elevation: 2,
            ),
            overlayColor: const Color(0xFF0075FF).withOpacity(0.1),
          ),
          child: RangeSlider(
            values: values,
            min: 0,
            max: 2000000,
            divisions: 20,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
