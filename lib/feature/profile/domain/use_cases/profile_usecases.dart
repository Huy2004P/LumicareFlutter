import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../repositories/profile_repository.dart';

class ProfileDataPack {
  final GetMyProfileUseCase getMyProfile;
  final UpdateProfileUseCase updateProfile;
  final RequestPasswordOTPUseCase requestOTP;
  final ChangePasswordUseCase changePassword;

  ProfileDataPack({
    required this.getMyProfile,
    required this.updateProfile,
    required this.requestOTP,
    required this.changePassword,
  });
}

class GetMyProfileUseCase {
  final ProfileRepository repository;
  GetMyProfileUseCase(this.repository);

  Future<UserProfileEntity> execute() {
    return repository.getProfile();
  }
}

class UpdateProfileUseCase {
  final ProfileRepository repository;
  UpdateProfileUseCase(this.repository);

  Future<UserProfileEntity> execute(
    UserProfileEntity user, {
    List<int>? avatarBytes,
  }) {
    return repository.updateProfile(user, avatarBytes: avatarBytes);
  }
}

class RequestPasswordOTPUseCase {
  final ProfileRepository repository;
  RequestPasswordOTPUseCase(this.repository);

  Future<void> execute() {
    return repository.requestChangePasswordOTP();
  }
}

class ChangePasswordUseCase {
  final ProfileRepository repository;
  ChangePasswordUseCase(this.repository);

  Future<void> execute({
    required String oldPassword,
    required String newPassword,
    required String otp,
  }) {
    return repository.changePassword(
      oldPassword: oldPassword,
      newPassword: newPassword,
      otp: otp,
    );
  }
}
