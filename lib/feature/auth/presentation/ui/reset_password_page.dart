import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/core/network/data/models/generated/auth.pb.dart'
    as grpc;
import 'package:lumi_care/feature/auth/application/constants/route_constants.dart';
import 'package:lumi_care/feature/auth/presentation/bloc/auth_bloc.dart';
import 'package:lumi_care/feature/auth/presentation/bloc/auth_event.dart';
import 'package:lumi_care/feature/auth/presentation/bloc/auth_state.dart';
import '../widgets/reset/reset_button.dart';
import '../widgets/reset/reset_header.dart';
import '../widgets/reset/reset_info_card.dart';
import '../widgets/reset/reset_input_field.dart';

class ResetPasswordPage extends StatefulWidget {
  final String email;
  final String otp;

  const ResetPasswordPage({super.key, required this.email, required this.otp});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final _passwordController = TextEditingController();
  final _confirmController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;
  bool _isConfirmObscure = true;

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.status == AuthStatus.resetSuccess) {
          _showSnackBar(
            state.successMessage ?? "Cập nhật thành công!",
            Colors.green,
          );
          Future.delayed(const Duration(milliseconds: 2000), () {
            if (mounted) context.goNamed(AuthRoutes.loginScreen);
          });
        } else if (state.status == AuthStatus.error) {
          _showSnackBar(
            state.errorMessage ?? "Lỗi xác thực. Vui lòng thử lại!",
            Colors.redAccent,
          );
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Color(0xFF191C1F),
              size: 20,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Stack(
          children: [
            Positioned(
              top: -80,
              left: -80,
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF0075FF).withOpacity(0.04),
                ),
              ),
            ),
            SafeArea(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 48),
                      const ResetHeader(),
                      const SizedBox(height: 40),
                      ResetInfoCard(email: widget.email),
                      const SizedBox(height: 32),
                      ResetInputField(
                        controller: _passwordController,
                        label: "Mật khẩu mới",
                        hint: "Tối thiểu 6 ký tự",
                        icon: Icons.lock_outline_rounded,
                        isObscure: _isObscure,
                        onToggle: () =>
                            setState(() => _isObscure = !_isObscure),
                        validator: (v) => (v == null || v.length < 6)
                            ? "Mật khẩu quá ngắn"
                            : null,
                      ),
                      const SizedBox(height: 24),
                      ResetInputField(
                        controller: _confirmController,
                        label: "Xác nhận mật khẩu",
                        hint: "Nhập lại mật khẩu mới",
                        icon: Icons.lock_reset_rounded,
                        isObscure: _isConfirmObscure,
                        onToggle: () => setState(
                          () => _isConfirmObscure = !_isConfirmObscure,
                        ),
                        validator: (v) => (v != _passwordController.text)
                            ? "Mật khẩu không khớp"
                            : null,
                      ),
                      const SizedBox(height: 48),
                      ResetButton(onPressed: _handleResetSubmit),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleResetSubmit() {
    if (_formKey.currentState!.validate()) {
      final request = grpc.ResetPasswordRequest()
        ..email = widget.email
        ..otp = widget.otp
        ..newPassword = _passwordController.text;
      context.read<AuthBloc>().add(AuthResetPasswordStarted(request));
    }
  }

  void _showSnackBar(String msg, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg, style: const TextStyle(fontWeight: FontWeight.w600)),
        backgroundColor: color,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
