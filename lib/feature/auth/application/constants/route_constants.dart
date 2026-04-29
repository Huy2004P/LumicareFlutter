class AuthRoutes {
  static const String prefix = 'auth';
  static const String root = '/';

  static const String loginScreen = '${prefix}_login';
  static const String registerScreen = '${prefix}_register';
  static const String forgotPasswordScreen = '${prefix}_forgot_password';
  static const String resetPasswordScreen = '${prefix}_reset_password';
  static const String verifyOTPScreen = '${prefix}_verify_otp';
  static const String roleSelectionScreen = '${prefix}_role_selection';
}

class AuthPath {
  static const String prefix = 'auth';
  static const String root = '/';

  static const String loginScreen = '/$prefix/login';
  static const String registerScreen = '/$prefix/register';
  static const String forgotPasswordScreen = '/$prefix/forgot_password';
  static const String resetPasswordScreen = '/$prefix/reset_password';
  static const String verifyOTPScreen = '/$prefix/verify_otp';
  static const String roleSelectionScreen = '/$prefix/role_selection';
}
