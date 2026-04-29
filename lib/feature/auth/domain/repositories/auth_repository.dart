import 'package:lumi_care/core/network/data/models/generated/auth.pb.dart'
    as grpc;
import 'package:lumi_care/core/network/domain/entities/entities.dart';

abstract class AuthRepository {
  Future<AuthResponseEntity> login(String email, String password);

  Future<AuthResponseEntity> register(grpc.RegisterRequest request);

  Future<SimpleStatusEntity> forgotPassword(String email);

  Future<SimpleStatusEntity> resetPassword(grpc.ResetPasswordRequest request);

  Future<AuthResponseEntity> refreshToken(String token);

  Future<void> logout();

  bool isLoggedIn();

  Future<SimpleStatusEntity> verifyOTP(String email, String otp);
}
