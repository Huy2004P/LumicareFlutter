import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../../../../auth/application/constants/route_constants.dart';
import '../../../../../auth/data/datasources/auth_local_datasource.dart';
import '../bloc/profile_bloc.dart';
import '../bloc/profile_event.dart';
import '../bloc/profile_state.dart';
import 'password_input_field.dart';
import 'otp_input_row.dart';

class ChangePasswordDialog extends StatefulWidget {
  const ChangePasswordDialog({super.key});

  static void show(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => BlocProvider.value(
        value: context.read<ProfileBloc>(),
        child: const ChangePasswordDialog(),
      ),
    );
  }

  @override
  State<ChangePasswordDialog> createState() => _ChangePasswordDialogState();
}

class _ChangePasswordDialogState extends State<ChangePasswordDialog> {
  final oldPassController = TextEditingController();
  final newPassController = TextEditingController();
  final confirmPassController = TextEditingController();
  final otpController = TextEditingController();

  bool showOldPass = false;
  bool showNewPass = false;
  bool showConfirmPass = false;

  Timer? timer;
  int countdown = 60;
  bool isCountdownActive = false;

  @override
  void dispose() {
    timer?.cancel();
    oldPassController.dispose();
    newPassController.dispose();
    confirmPassController.dispose();
    otpController.dispose();
    super.dispose();
  }

  void startTimer() {
    if (isCountdownActive) return;
    setState(() {
      isCountdownActive = true;
      countdown = 60;
    });
    timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (countdown == 0) {
        setState(() {
          isCountdownActive = false;
          t.cancel();
        });
      } else {
        setState(() => countdown--);
      }
    });
  }

  void submit() {
    final oldPass = oldPassController.text.trim();
    final newPass = newPassController.text.trim();
    final confirmPass = confirmPassController.text.trim();
    final otp = otpController.text.trim();

    if (oldPass.isEmpty || newPass.isEmpty || otp.isEmpty) {
      showNotice("Vui lòng nhập đầy đủ thông tin", Colors.orange);
      return;
    }
    if (newPass == oldPass) {
      showNotice("Mật khẩu mới không được trùng mật khẩu cũ", Colors.red);
      return;
    }
    if (newPass != confirmPass) {
      showNotice("Mật khẩu xác nhận không khớp", Colors.red);
      return;
    }

    context.read<ProfileBloc>().add(
      ChangePasswordStarted(
        oldPassword: oldPass,
        newPassword: newPass,
        otp: otp,
      ),
    );
  }

  void showNotice(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        backgroundColor: color,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) async {
        if (state.status == ProfileStatus.otpSent) {
          showNotice("Mã xác thực đã được gửi", const Color(0xFF0075FF));
        }
        if (state.status == ProfileStatus.passwordChanged) {
          await GetIt.I<AuthLocalDataSource>().clear();
          if (mounted) {
            showNotice("Đổi mật khẩu thành công", Colors.green);
            context.goNamed(AuthRoutes.loginScreen);
          }
        }
        if (state.status == ProfileStatus.error) {
          showNotice(state.errorMessage ?? "Lỗi hệ thống", Colors.red);
        }
      },
      child: Dialog(
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
                  const Text(
                    "Đổi mật khẩu",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF191C1F),
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
                "Nhập mã OTP gửi về Email để xác nhận thay đổi mật khẩu.",
                style: TextStyle(color: Color(0xFF505A63), fontSize: 13),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              PasswordInputField(
                controller: oldPassController,
                label: "Mật khẩu hiện tại",
                isVisible: showOldPass,
                onToggle: () => setState(() => showOldPass = !showOldPass),
              ),
              const SizedBox(height: 16),
              PasswordInputField(
                controller: newPassController,
                label: "Mật khẩu mới",
                isVisible: showNewPass,
                onToggle: () => setState(() => showNewPass = !showNewPass),
              ),
              const SizedBox(height: 16),
              PasswordInputField(
                controller: confirmPassController,
                label: "Xác nhận mật khẩu mới",
                isVisible: showConfirmPass,
                onToggle: () =>
                    setState(() => showConfirmPass = !showConfirmPass),
              ),
              const SizedBox(height: 16),
              OTPInputRow(
                controller: otpController,
                isCountdownActive: isCountdownActive,
                countdown: countdown,
                onSendCode: () {
                  context.read<ProfileBloc>().add(RequestPasswordOTPStarted());
                  startTimer();
                },
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed:
                      context.watch<ProfileBloc>().state.status ==
                          ProfileStatus.loading
                      ? null
                      : submit,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0075FF),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: const StadiumBorder(),
                  ),
                  child:
                      context.watch<ProfileBloc>().state.status ==
                          ProfileStatus.loading
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 2,
                          ),
                        )
                      : const Text(
                          "XÁC NHẬN",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1,
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
