import 'package:equatable/equatable.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

enum ProfileStatus {
  initial,
  loading,
  refreshing,
  loaded,
  success,
  error,
  otpSent, // Trạng thái đã gửi mã OTP thành công
  passwordChanged, // Trạng thái đã đổi mật khẩu thành công
}

class ProfileState extends Equatable {
  final ProfileStatus status;
  final UserProfileEntity? user;
  final String? errorMessage;
  final String? successMessage; // Thêm thông báo thành công nếu cần

  const ProfileState({
    this.status = ProfileStatus.initial,
    this.user,
    this.errorMessage,
    this.successMessage,
  });

  ProfileState copyWith({
    ProfileStatus? status,
    UserProfileEntity? user,
    String? errorMessage,
    String? successMessage,
  }) {
    return ProfileState(
      status: status ?? this.status,
      user: user ?? this.user,
      errorMessage: errorMessage ?? this.errorMessage,
      successMessage: successMessage ?? this.successMessage,
    );
  }

  @override
  List<Object?> get props => [status, user, errorMessage, successMessage];
}
