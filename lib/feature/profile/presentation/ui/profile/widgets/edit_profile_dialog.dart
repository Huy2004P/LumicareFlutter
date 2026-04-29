import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart'
    show UserProfileEntity;
import '../bloc/profile_bloc.dart';
import '../bloc/profile_event.dart';

class EditProfileDialog extends StatefulWidget {
  final UserProfileEntity user;

  const EditProfileDialog({super.key, required this.user});

  static void show(BuildContext context, UserProfileEntity user) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => BlocProvider.value(
        value: context.read<ProfileBloc>(),
        child: EditProfileDialog(user: user),
      ),
    );
  }

  @override
  State<EditProfileDialog> createState() => _EditProfileDialogState();
}

class _EditProfileDialogState extends State<EditProfileDialog> {
  final Color skyBlue = const Color(0xFF0075FF);
  final Color revolutDark = const Color(0xFF191C1F);
  final Color lightGray = const Color(0xFFF4F4F4);

  late TextEditingController nameController;
  late TextEditingController phoneController;
  late String selectedDate;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.user.fullName);
    phoneController = TextEditingController(text: widget.user.phone);
    selectedDate = widget.user.birthday;
  }

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  void handleSubmit() {
    final name = nameController.text.trim();
    final phone = phoneController.text.trim();

    if (name.isEmpty || phone.isEmpty) return;

    context.read<ProfileBloc>().add(
      UpdateProfileStarted(
        user: UserProfileEntity(
          id: widget.user.id,
          email: widget.user.email,
          role: widget.user.role,
          fullName: name,
          phone: phone,
          avatar: widget.user.avatar,
          birthday: selectedDate,
          createdAt: widget.user.createdAt,
        ),
      ),
    );
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Chỉnh sửa hồ sơ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: revolutDark,
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.close_rounded,
                    color: Color(0xFF8D969E),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              "Cập nhật thông tin cá nhân của bạn để chúng tôi hỗ trợ tốt nhất.",
              style: TextStyle(color: Color(0xFF505A63), fontSize: 13),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            _buildField(
              controller: nameController,
              label: "Họ và tên",
              icon: Icons.person_outline_rounded,
            ),
            const SizedBox(height: 16),
            _buildField(
              controller: phoneController,
              label: "Số điện thoại",
              icon: Icons.phone_android_rounded,
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 16),
            _buildDatePicker(),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: handleSubmit,
                style: ElevatedButton.styleFrom(
                  backgroundColor: skyBlue,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  "CẬP NHẬT NGAY",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Color(0xFF8D969E), fontSize: 14),
        filled: true,
        fillColor: lightGray,
        prefixIcon: Icon(icon, color: revolutDark, size: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: skyBlue, width: 1.5),
        ),
      ),
    );
  }

  Widget _buildDatePicker() {
    return InkWell(
      onTap: () async {
        final picked = await showDatePicker(
          context: context,
          initialDate: DateTime.tryParse(selectedDate) ?? DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
          builder: (context, child) => Theme(
            data: Theme.of(
              context,
            ).copyWith(colorScheme: ColorScheme.light(primary: skyBlue)),
            child: child!,
          ),
        );
        if (picked != null) {
          setState(() {
            selectedDate =
                "${picked.year}-${picked.month.toString().padLeft(2, '0')}-${picked.day.toString().padLeft(2, '0')}";
          });
        }
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: lightGray,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(Icons.cake_outlined, color: revolutDark, size: 20),
            const SizedBox(width: 12),
            Text(
              selectedDate.isEmpty
                  ? "Chọn ngày sinh"
                  : selectedDate.split('-').reversed.join('/'),
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
            ),
            const Spacer(),
            const Icon(
              Icons.calendar_today_rounded,
              size: 18,
              color: Color(0xFF8D969E),
            ),
          ],
        ),
      ),
    );
  }
}
