import 'package:equatable/equatable.dart';
import 'package:lumi_care/core/network/data/models/generated/auth.pb.dart'
    as grpc;

abstract class AuthEvent extends Equatable {
  const AuthEvent();
  @override
  List<Object?> get props => [];
}

class AuthCheckStatusStarted extends AuthEvent {}

class AuthLoginStarted extends AuthEvent {
  final String email;
  final String password;
  const AuthLoginStarted({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}

class AuthRegisterStarted extends AuthEvent {
  final grpc.RegisterRequest request;
  const AuthRegisterStarted(this.request);

  @override
  List<Object?> get props => [request];
}

class AuthForgotPasswordStarted extends AuthEvent {
  final String email;
  const AuthForgotPasswordStarted(this.email);

  @override
  List<Object?> get props => [email];
}

// 🚀 EVENT MỚI: Dùng để xác thực mã OTP tại màn hình VerifyOtpPage
class AuthVerifyOTPStarted extends AuthEvent {
  final String email;
  final String otp;
  const AuthVerifyOTPStarted({required this.email, required this.otp});

  @override
  List<Object?> get props => [email, otp];
}

class AuthResetPasswordStarted extends AuthEvent {
  final grpc.ResetPasswordRequest request;
  const AuthResetPasswordStarted(this.request);

  @override
  List<Object?> get props => [request];
}

class AuthLogoutRequested extends AuthEvent {}
