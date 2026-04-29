import 'package:equatable/equatable.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object?> get props => [];
}

// Lấy thông tin hồ sơ
class GetProfileStarted extends ProfileEvent {}

// Cập nhật thông tin hồ sơ (bao gồm avatar bytes nếu có)
class UpdateProfileStarted extends ProfileEvent {
  final UserProfileEntity user;
  final List<int>? avatarBytes;

  const UpdateProfileStarted({required this.user, this.avatarBytes});

  @override
  List<Object?> get props => [user, avatarBytes];
}

// Yêu cầu gửi mã OTP đổi mật khẩu về Email
class RequestPasswordOTPStarted extends ProfileEvent {}

// Thực hiện đổi mật khẩu với OTP
class ChangePasswordStarted extends ProfileEvent {
  final String oldPassword;
  final String newPassword;
  final String otp;

  const ChangePasswordStarted({
    required this.oldPassword,
    required this.newPassword,
    required this.otp,
  });

  @override
  List<Object?> get props => [oldPassword, newPassword, otp];
}
