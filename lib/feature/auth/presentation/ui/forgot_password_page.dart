import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/feature/auth/application/constants/route_constants.dart';
import 'package:lumi_care/feature/auth/presentation/bloc/auth_bloc.dart';
import 'package:lumi_care/feature/auth/presentation/bloc/auth_event.dart';
import 'package:lumi_care/feature/auth/presentation/bloc/auth_state.dart';
import '../widgets/forgot_password/forgot_button.dart';
import '../widgets/forgot_password/forgot_contact_support.dart';
import '../widgets/forgot_password/forgot_header.dart';
import '../widgets/forgot_password/forgot_input_field.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.status == AuthStatus.otpSent) {
          context.pushNamed(
            AuthRoutes.verifyOTPScreen,
            extra: _emailController.text.trim(),
          );
        } else if (state.status == AuthStatus.error) {
          _showSnackBar(
            state.errorMessage ?? 'Gửi mã OTP thất bại.',
            Colors.redAccent,
          );
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "KHÔI PHỤC",
            style: TextStyle(
              color: Color(0xFF191C1F),
              fontWeight: FontWeight.w800,
              fontSize: 14,
              letterSpacing: 1.5,
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
        ),
        body: Stack(
          children: [
            // 🎨 Decor mờ cực nhẹ
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
                      const ForgotHeader(),
                      const SizedBox(height: 56),
                      ForgotInputField(
                        controller: _emailController,
                        label: "Email tài khoản",
                        hint: "Nhập email đã đăng ký",
                        icon: Icons.alternate_email_rounded,
                        validator: (v) {
                          if (v == null || v.isEmpty)
                            return "Vui lòng nhập email";
                          if (!v.contains("@")) return "Email không hợp lệ";
                          return null;
                        },
                      ),
                      const SizedBox(height: 40),
                      ForgotButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<AuthBloc>().add(
                              AuthForgotPasswordStarted(
                                _emailController.text.trim(),
                              ),
                            );
                          }
                        },
                      ),
                      const SizedBox(height: 32),
                      const Center(child: ForgotContactSupport()),
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
