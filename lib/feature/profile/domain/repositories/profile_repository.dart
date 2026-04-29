import 'package:lumi_care/core/network/domain/entities/entities.dart';

abstract class ProfileRepository {
  Future<UserProfileEntity> getProfile();
  Future<UserProfileEntity> updateProfile(
    UserProfileEntity user, {
    List<int>? avatarBytes,
  });
  Future<void> requestChangePasswordOTP();
  Future<void> changePassword({
    required String oldPassword,
    required String newPassword,
    required String otp,
  });
}
