import 'package:flutter/material.dart';

class BookingInfoList extends StatelessWidget {
  final String serviceName, dateDisplay, timeDisplay;
  final VoidCallback onServiceTap, onDateTap, onTimeTap;
  const BookingInfoList({
    super.key,
    required this.serviceName,
    required this.dateDisplay,
    required this.timeDisplay,
    required this.onServiceTap,
    required this.onDateTap,
    required this.onTimeTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFF4F4F4), width: 1.5),
      ),
      child: Column(
        children: [
          _buildItem(
            Icons.medical_services_rounded,
            "Gói dịch vụ",
            serviceName,
            onServiceTap,
          ),
          const Divider(height: 1, indent: 56, color: Color(0xFFF4F4F4)),
          _buildItem(
            Icons.calendar_today_rounded,
            "Ngày khám",
            dateDisplay,
            onDateTap,
          ),
          const Divider(height: 1, indent: 56, color: Color(0xFFF4F4F4)),
          _buildItem(
            Icons.access_time_filled_rounded,
            "Khung giờ",
            timeDisplay,
            onTimeTap,
          ),
        ],
      ),
    );
  }

  Widget _buildItem(
    IconData icon,
    String label,
    String value,
    VoidCallback onTap,
  ) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon, color: const Color(0xFF0075FF), size: 20),
      title: Text(
        label,
        style: const TextStyle(
          fontSize: 12,
          color: Color(0xFF8D969E),
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        value,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Color(0xFF191C1F),
        ),
      ),
      trailing: const Icon(Icons.chevron_right, size: 18),
    );
  }
}
