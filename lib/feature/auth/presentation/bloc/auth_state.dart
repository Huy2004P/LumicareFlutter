import 'package:equatable/equatable.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

enum AuthStatus {
  initial,
  loading,
  authenticated,
  unauthenticated,
  error,
  otpSent,
  otpVerified,
  resetSuccess,
}

class AuthState extends Equatable {
  final AuthStatus status;
  final AuthResponseEntity? authData; // Chứa token & user từ Server
  final String? errorMessage;
  final String? successMessage;

  const AuthState({
    this.status = AuthStatus.initial,
    this.authData,
    this.errorMessage,
    this.successMessage,
  });

  // 🎯 TRÍCH XUẤT ROLE TRỰC TIẾP: Tránh viết logic rườm rà ở UI
  String? get userRole => authData?.user.role;

  AuthState copyWith({
    AuthStatus? status,
    AuthResponseEntity? authData,
    String? errorMessage,
    String? successMessage,
  }) {
    return AuthState(
      status: status ?? this.status,
      authData: authData ?? this.authData,
      errorMessage: errorMessage ?? this.errorMessage,
      successMessage: successMessage ?? this.successMessage,
    );
  }

  @override
  List<Object?> get props => [status, authData, errorMessage, successMessage];
}
