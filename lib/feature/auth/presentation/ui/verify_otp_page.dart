import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/feature/auth/application/constants/route_constants.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';
import '../widgets/verifyotp/otp_header.dart';
import '../widgets/verifyotp/otp_input_field.dart';
import '../widgets/verifyotp/otp_timer_resend.dart';
import '../widgets/verifyotp/otp_action_button.dart';

class VerifyOtpPage extends StatefulWidget {
  final String email;
  const VerifyOtpPage({super.key, required this.email});

  @override
  State<VerifyOtpPage> createState() => _VerifyOtpPageState();
}

class _VerifyOtpPageState extends State<VerifyOtpPage> {
  final _otpController = TextEditingController();
  final FocusNode _otpFocusNode = FocusNode();
  Timer? _timer;
  int _start = 60;
  bool _isResendDelayed = true;

  @override
  void initState() {
    super.initState();
    _startTimer();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _otpFocusNode.requestFocus();
    });
  }

  void _startTimer() {
    setState(() {
      _isResendDelayed = true;
      _start = 60;
    });
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_start == 0) {
        setState(() {
          _isResendDelayed = false;
          timer.cancel();
        });
      } else {
        setState(() => _start--);
      }
    });
  }

  void _handleResendOtp() {
    if (_isResendDelayed) return;
    context.read<AuthBloc>().add(AuthForgotPasswordStarted(widget.email));
    _showSnackBar("Mã mới đã được gửi!", Colors.green);
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _otpController.dispose();
    _otpFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.status == AuthStatus.otpVerified) {
          context.pushNamed(
            AuthRoutes.resetPasswordScreen,
            extra: {'email': widget.email, 'otp': _otpController.text},
          );
        } else if (state.status == AuthStatus.error) {
          _showSnackBar(
            state.errorMessage ?? "Mã không chính xác",
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
              right: -80,
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // ignore: deprecated_member_use
                  color: const Color(0xFF0075FF).withOpacity(0.04),
                ),
              ),
            ),
            SafeArea(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 48),
                    OtpHeader(email: widget.email),
                    const SizedBox(height: 56),
                    OtpInputField(
                      controller: _otpController,
                      focusNode: _otpFocusNode,
                    ),
                    const SizedBox(height: 40),
                    OtpActionButton(
                      onPressed: () {
                        if (_otpController.text.length == 6) {
                          context.read<AuthBloc>().add(
                            AuthVerifyOTPStarted(
                              email: widget.email,
                              otp: _otpController.text,
                            ),
                          );
                        } else {
                          _showSnackBar(
                            "Vui lòng nhập đủ 6 chữ số",
                            Colors.orange,
                          );
                        }
                      },
                    ),
                    const SizedBox(height: 32),
                    OtpTimerResend(
                      start: _start,
                      isResendDelayed: _isResendDelayed,
                      onResend: _handleResendOtp,
                    ),
                  ],
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
