import 'package:lumi_care/core/network/data/models/generated/auth.pb.dart'
    as grpc;
import 'package:lumi_care/core/network/domain/entities/entities.dart';

import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_datasource.dart';
import '../datasources/auth_local_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<AuthResponseEntity> login(String email, String password) async {
    try {
      final response = await remoteDataSource.login(email, password);

      await localDataSource.saveAuthData(
        access: response.accessToken,
        refresh: response.refreshToken,
        user: response.user,
      );

      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<AuthResponseEntity> register(grpc.RegisterRequest request) async {
    try {
      final response = await remoteDataSource.register(request);

      await localDataSource.saveAuthData(
        access: response.accessToken,
        refresh: response.refreshToken,
        user: response.user,
      );

      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SimpleStatusEntity> forgotPassword(String email) async {
    try {
      final res = await remoteDataSource.forgotPassword(email);
      return SimpleStatusEntity(success: res.success, message: res.message);
    } catch (e) {
      return SimpleStatusEntity(success: false, message: e.toString());
    }
  }

  @override
  Future<SimpleStatusEntity> resetPassword(
    grpc.ResetPasswordRequest request,
  ) async {
    try {
      final res = await remoteDataSource.resetPassword(request);
      return SimpleStatusEntity(success: res.success, message: res.message);
    } catch (e) {
      return const SimpleStatusEntity(
        success: false,
        message: "Reset mật khẩu không thành công!",
      );
    }
  }

  @override
  Future<AuthResponseEntity> refreshToken(String token) async {
    try {
      final response = await remoteDataSource.refreshToken(token);

      await localDataSource.saveAuthData(
        access: response.accessToken,
        refresh: response.refreshToken,
        user: response.user,
      );

      print("✅ [Repo] Đã Refresh & Lưu Token thành công!");
      return response;
    } catch (e) {
      print("❌ [Repo] Refresh Token thất bại: $e");

      // 🧹 3. DỌN DẸP: Nếu lỗi (ví dụ Refresh Token cũng hết hạn)
      // thì mình xóa sạch dữ liệu cũ để App đá User ra ngoài an toàn
      await localDataSource.clear();

      rethrow;
    }
  }

  @override
  Future<void> logout() async {
    try {
      await remoteDataSource.logout();
    } catch (e) {
      print("Logout server error: $e");
    } finally {
      await localDataSource.clear();
    }
  }

  @override
  bool isLoggedIn() {
    return localDataSource.isLoggedIn;
  }

  @override
  Future<SimpleStatusEntity> verifyOTP(String email, String otp) async {
    try {
      final res = await remoteDataSource.verifyOTP(email, otp);
      return SimpleStatusEntity(success: res.success, message: res.message);
    } catch (e) {
      return const SimpleStatusEntity(
        success: false,
        message: "Mã xác thực không hợp lệ hoặc đã hết hạn.",
      );
    }
  }
}
