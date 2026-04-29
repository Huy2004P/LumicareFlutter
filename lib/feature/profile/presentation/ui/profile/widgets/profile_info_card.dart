import 'package:flutter/material.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class ProfileInfoCard extends StatelessWidget {
  final UserProfileEntity user;
  const ProfileInfoCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFF4F4F4), width: 1.5),
      ),
      child: Column(
        children: [
          _buildItem(Icons.alternate_email_rounded, "Email", user.email),
          _buildDivider(),
          _buildItem(Icons.phone_iphone_rounded, "Số điện thoại", user.phone),
          _buildDivider(),
          _buildItem(
            Icons.cake_rounded,
            "Ngày sinh",
            user.birthday.isNotEmpty
                ? user.birthday.split('-').reversed.join('/')
                : "Chưa cập nhật",
          ),
        ],
      ),
    );
  }

  Widget _buildItem(IconData icon, String title, String value) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF0075FF), size: 22),
      title: RichText(
        text: TextSpan(
          style: const TextStyle(fontSize: 14, color: Color(0xFF191C1F)),
          children: [
            TextSpan(
              text: "$title: ",
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
            TextSpan(
              text: value,
              style: const TextStyle(
                color: Color(0xFF505A63),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() =>
      const Divider(height: 1, indent: 56, color: Color(0xFFF4F4F4));
}
