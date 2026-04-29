import 'package:flutter/material.dart';

class DoctorAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const DoctorAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
          color: Color(0xFF191C1F),
          fontWeight: FontWeight.w700,
          fontSize: 16,
          letterSpacing: 1.2,
        ),
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Color(0xFF191C1F),
          size: 20,
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
