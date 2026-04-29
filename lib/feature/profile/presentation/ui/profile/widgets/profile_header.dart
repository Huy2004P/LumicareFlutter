import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../bloc/profile_bloc.dart';
import '../bloc/profile_event.dart';

class ProfileHeader extends StatelessWidget {
  final UserProfileEntity user;
  const ProfileHeader({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 60, 20, 30),
      decoration: const BoxDecoration(
        color: Color(0xFFF4F4F4),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
      ),
      child: Column(
        children: [
          const Text(
            "HỒ SƠ CỦA TÔI",
            style: TextStyle(
              color: Color(0xFF191C1F),
              fontWeight: FontWeight.w700,
              fontSize: 14,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 24),
          _buildAvatar(context),
          const SizedBox(height: 16),
          Text(
            user.fullName,
            style: const TextStyle(
              color: Color(0xFF191C1F),
              fontSize: 22,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.5,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "ID: ${user.id}",
            style: const TextStyle(
              color: Color(0xFF8D969E),
              fontWeight: FontWeight.w600,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAvatar(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            radius: 50,
            backgroundColor: const Color(0xFFF4F4F4),
            backgroundImage: user.avatar.isNotEmpty
                ? NetworkImage(user.avatar)
                : null,
            child: user.avatar.isEmpty
                ? const Icon(Icons.person, size: 50, color: Color(0xFF191C1F))
                : null,
          ),
        ),
        GestureDetector(
          onTap: () => _pickImage(context),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFF0075FF),
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: const Icon(
              Icons.camera_alt_rounded,
              color: Colors.white,
              size: 16,
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _pickImage(BuildContext context) async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 70,
    );
    if (image != null) {
      final bytes = await image.readAsBytes();
      context.read<ProfileBloc>().add(
        UpdateProfileStarted(user: user, avatarBytes: bytes),
      );
    }
  }
}
