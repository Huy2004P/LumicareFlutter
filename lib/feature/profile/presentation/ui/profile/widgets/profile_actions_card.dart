import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../../../../location/application/constants/route_constants.dart';
import '../widgets/edit_profile_dialog.dart';
import '../widgets/change_password_widget.dart';

class ProfileActionsCard extends StatelessWidget {
  final UserProfileEntity user;
  const ProfileActionsCard({super.key, required this.user});

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
          _buildAction(context, Icons.map_rounded, "Quản lý địa chỉ", () {
            context.pushNamed(
              LocationRoutes.locationListScreen,
              extra: user.id,
            );
          }),
          _buildDivider(),
          _buildAction(context, Icons.vpn_key_rounded, "Đổi mật khẩu", () {
            ChangePasswordDialog.show(context);
          }),
          _buildDivider(),
          _buildAction(
            context,
            Icons.edit_note_rounded,
            "Chỉnh sửa thông tin",
            () {
              EditProfileDialog.show(context, user);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildAction(
    BuildContext context,
    IconData icon,
    String title,
    VoidCallback onTap,
  ) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon, color: const Color(0xFF0075FF), size: 22),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Color(0xFF191C1F),
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 14,
        color: Color(0xFF8D969E),
      ),
    );
  }

  Widget _buildDivider() =>
      const Divider(height: 1, indent: 56, color: Color(0xFFF4F4F4));
}
