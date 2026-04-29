import 'package:grpc/grpc.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

import '../../../auth/data/datasources/auth_local_datasource.dart';
import '../../../auth/domain/use_cases/auth_usecases.dart';
import '../../domain/repositories/profile_repository.dart';
import '../datasources/profile_remote_datasource.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDataSource dataSource;
  final AuthLocalDataSource localDataSource;
  final RefreshTokenUseCase refreshTokenUseCase;

  ProfileRepositoryImpl(
    this.dataSource,
    this.localDataSource,
    this.refreshTokenUseCase,
  );

  @override
  Future<UserProfileEntity> getProfile() async {
    try {
      return await dataSource.getProfile();
    } catch (e) {
      if (e is GrpcError && e.code == StatusCode.unauthenticated) {
        final rfToken = localDataSource.getRefreshToken() ?? "";
        final isSuccess = await refreshTokenUseCase.execute(rfToken);
        if (isSuccess == true) {
          return await dataSource.getProfile();
        }
      }
      rethrow;
    }
  }

  @override
  Future<UserProfileEntity> updateProfile(
    UserProfileEntity user, {
    List<int>? avatarBytes,
  }) async {
    try {
      return await dataSource.updateProfile(user, avatarBytes: avatarBytes);
    } catch (e) {
      if (e is GrpcError && e.code == StatusCode.unauthenticated) {
        final rfToken = localDataSource.getRefreshToken() ?? "";
        final isSuccess = await refreshTokenUseCase.execute(rfToken);
        if (isSuccess == true) {
          return await dataSource.updateProfile(user, avatarBytes: avatarBytes);
        }
      }
      rethrow;
    }
  }

  @override
  Future<void> requestChangePasswordOTP() async {
    try {
      await dataSource.requestChangePasswordOTP();
    } catch (e) {
      if (e is GrpcError && e.code == StatusCode.unauthenticated) {
        final rfToken = localDataSource.getRefreshToken() ?? "";
        final isSuccess = await refreshTokenUseCase.execute(rfToken);
        if (isSuccess == true) {
          return await dataSource.requestChangePasswordOTP();
        }
      }
      rethrow;
    }
  }

  @override
  Future<void> changePassword({
    required String oldPassword,
    required String newPassword,
    required String otp,
  }) async {
    try {
      await dataSource.changePassword(
        oldPassword: oldPassword,
        newPassword: newPassword,
        otp: otp,
      );
    } catch (e) {
      if (e is GrpcError && e.code == StatusCode.unauthenticated) {
        final rfToken = localDataSource.getRefreshToken() ?? "";
        final isSuccess = await refreshTokenUseCase.execute(rfToken);
        if (isSuccess == true) {
          return await dataSource.changePassword(
            oldPassword: oldPassword,
            newPassword: newPassword,
            otp: otp,
          );
        }
      }
      rethrow;
    }
  }
}
