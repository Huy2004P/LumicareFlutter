import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/core/network/data/models/generated/auth.pb.dart'
    as grpc;
import 'package:lumi_care/feature/home/application/constants/route_constants.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';
import '../widgets/register/register_header.dart';
import '../widgets/register/register_input_field.dart';
import '../widgets/register/register_date_picker.dart';
import '../widgets/register/register_button.dart';
import '../widgets/register/register_footer.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _fullNameController = TextEditingController();
  final _phoneController = TextEditingController();

  bool _isObscure = true;
  DateTime? _selectedDate;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _fullNameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.status == AuthStatus.authenticated) {
          context.goNamed(HomeRoutes.homeScreen);
        } else if (state.status == AuthStatus.error) {
          _showSnackBar(
            state.errorMessage ?? 'Đăng ký thất bại!',
            Colors.redAccent,
          );
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              top: -80,
              left: -60,
              child: Container(
                width: 280,
                height: 280,
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
                      const SizedBox(height: 60),
                      const RegisterHeader(),
                      const SizedBox(height: 48),
                      RegisterInputField(
                        controller: _fullNameController,
                        label: "Họ và tên",
                        hint: "Nguyễn Văn A",
                        icon: Icons.person_outline_rounded,
                        validator: (v) => (v == null || v.trim().isEmpty)
                            ? "Vui lòng nhập họ tên"
                            : null,
                      ),
                      const SizedBox(height: 20),
                      RegisterInputField(
                        controller: _emailController,
                        label: "Email",
                        hint: "example@gmail.com",
                        icon: Icons.alternate_email_rounded,
                        keyboardType: TextInputType.emailAddress,
                        validator: (v) => (v == null || !v.contains('@'))
                            ? "Email không hợp lệ"
                            : null,
                      ),
                      const SizedBox(height: 20),
                      RegisterInputField(
                        controller: _phoneController,
                        label: "Số điện thoại",
                        hint: "09xxxxxxxx",
                        icon: Icons.phone_iphone_rounded,
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        validator: (v) => (v == null || v.length < 10)
                            ? "SĐT không hợp lệ"
                            : null,
                      ),
                      const SizedBox(height: 20),
                      RegisterDatePicker(
                        selectedDate: _selectedDate,
                        onTap: _handlePickDate,
                      ),
                      const SizedBox(height: 20),
                      RegisterInputField(
                        controller: _passwordController,
                        label: "Mật khẩu",
                        hint: "••••••••",
                        icon: Icons.lock_outline_rounded,
                        isPassword: true,
                        isObscure: _isObscure,
                        onToggleObscure: () =>
                            setState(() => _isObscure = !_isObscure),
                        validator: (v) => (v == null || v.length < 6)
                            ? "Tối thiểu 6 ký tự"
                            : null,
                      ),
                      const SizedBox(height: 40),
                      RegisterButton(onPressed: _onRegisterSubmit),
                      const SizedBox(height: 32),
                      const Center(child: RegisterFooter()),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ),
            _buildBackButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildBackButton() {
    return Positioned(
      top: 15,
      left: 10,
      child: SafeArea(
        child: IconButton(
          icon: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                ),
              ],
            ),
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Color(0xFF191C1F),
              size: 18,
            ),
          ),
          onPressed: () => context.pop(),
        ),
      ),
    );
  }

  Future<void> _handlePickDate() async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (context, child) => Theme(
        data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.light(primary: Color(0xFF0075FF)),
        ),
        child: child!,
      ),
    );
    if (date != null) setState(() => _selectedDate = date);
  }

  void _onRegisterSubmit() {
    if (_formKey.currentState!.validate()) {
      if (_selectedDate == null) {
        _showSnackBar("Vui lòng chọn ngày sinh", Colors.orange);
        return;
      }
      final birthdayStr =
          "${_selectedDate!.year}-${_selectedDate!.month.toString().padLeft(2, '0')}-${_selectedDate!.day.toString().padLeft(2, '0')}";
      final request = grpc.RegisterRequest()
        ..email = _emailController.text
        ..password = _passwordController.text
        ..fullName = _fullNameController.text
        ..phone = _phoneController.text
        ..role = "patient"
        ..birthday = birthdayStr;
      context.read<AuthBloc>().add(AuthRegisterStarted(request));
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
