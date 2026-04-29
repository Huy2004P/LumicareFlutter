import 'package:lumi_care/core/network/data/models/generated/auth.pb.dart'
    as auth_models;
import 'package:lumi_care/core/network/data/repositories_impl/repositories_impl.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart'
    as entities;

class AuthRemoteDataSource {
  final AppRepositoryImpl serverRepo;
  AuthRemoteDataSource(this.serverRepo);

  Future<entities.AuthResponseEntity> register(
    auth_models.RegisterRequest request,
  ) {
    return serverRepo.register(request);
  }

  Future<entities.AuthResponseEntity> login(String email, String password) {
    return serverRepo.login(email, password);
  }

  Future<auth_models.ForgotPasswordResponse> forgotPassword(String email) {
    return serverRepo.forgotPassword(email);
  }

  Future<auth_models.ResetPasswordResponse> resetPassword(
    auth_models.ResetPasswordRequest request,
  ) {
    return serverRepo.resetPassword(request);
  }

  Future<entities.AuthResponseEntity> refreshToken(String token) {
    return serverRepo.refreshToken(token);
  }

  Future<auth_models.StatusResponse> logout() {
    return serverRepo.logout();
  }

  Future<auth_models.StatusResponse> verifyOTP(String email, String otp) {
    return serverRepo.verifyOTP(email: email, otp: otp);
  }
}
