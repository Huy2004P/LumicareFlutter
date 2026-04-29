import 'package:lumi_care/core/network/data/repositories_impl/repositories_impl.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class ProfileRemoteDataSource {
  final AppRepositoryImpl serverRepo;

  ProfileRemoteDataSource(this.serverRepo);

  Future<UserProfileEntity> getProfile() async {
    return serverRepo.getMyProfile();
  }

  Future<UserProfileEntity> updateProfile(
    UserProfileEntity user, {
    List<int>? avatarBytes,
  }) async {
    return serverRepo.updateProfile(user, avatarBytes: avatarBytes);
  }

  Future<void> requestChangePasswordOTP() async {
    await serverRepo.requestChangePasswordOTP();
  }

  Future<void> changePassword({
    required String oldPassword,
    required String newPassword,
    required String otp,
  }) async {
    await serverRepo.changePassword(
      oldPassword: oldPassword,
      newPassword: newPassword,
      otp: otp,
    );
  }
}
