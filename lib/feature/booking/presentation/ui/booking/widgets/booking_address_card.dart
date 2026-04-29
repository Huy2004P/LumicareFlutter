import 'package:flutter/material.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class BookingAddressCard extends StatelessWidget {
  final LocationEntity? location;
  final TextEditingController controller;
  final VoidCallback onTap;
  const BookingAddressCard({
    super.key,
    this.location,
    required this.controller,
    required this.onTap,
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
          ListTile(
            onTap: onTap,
            leading: const Icon(
              Icons.location_on_rounded,
              color: Colors.redAccent,
              size: 22,
            ),
            title: Text(
              location != null
                  ? "${location!.label}: ${location!.addressDetail}"
                  : "Vui lòng chọn địa chỉ khám",
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: const Icon(Icons.chevron_right, size: 18),
          ),
          const Divider(height: 1, indent: 56, color: Color(0xFFF4F4F4)),
          Padding(
            padding: const EdgeInsets.fromLTRB(56, 4, 16, 16),
            child: TextField(
              controller: controller,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              decoration: const InputDecoration(
                hintText: "Mô tả triệu chứng bệnh...",
                border: InputBorder.none,
                isDense: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
