import 'package:lumi_care/core/network/data/models/generated/auth.pb.dart'
    as grpc;
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import 'package:lumi_care/feature/auth/data/datasources/auth_local_datasource.dart';
import '../repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository repository;
  LoginUseCase(this.repository);

  Future<AuthResponseEntity> execute(String email, String password) {
    return repository.login(email, password);
  }
}

class RegisterUseCase {
  final AuthRepository repository;
  RegisterUseCase(this.repository);

  Future<AuthResponseEntity> execute(grpc.RegisterRequest request) {
    return repository.register(request);
  }
}

class ForgotPasswordUseCase {
  final AuthRepository repository;
  ForgotPasswordUseCase(this.repository);

  Future<SimpleStatusEntity> execute(String email) {
    return repository.forgotPassword(email);
  }
}

class ResetPasswordUseCase {
  final AuthRepository repository;
  ResetPasswordUseCase(this.repository);

  Future<SimpleStatusEntity> execute(grpc.ResetPasswordRequest request) {
    return repository.resetPassword(request);
  }
}

class RefreshTokenUseCase {
  final AuthRepository repository;
  RefreshTokenUseCase(this.repository);

  Future<AuthResponseEntity> execute(String token) {
    return repository.refreshToken(token);
  }
}

class LogoutUseCase {
  final AuthRepository repository;
  LogoutUseCase(this.repository);

  Future<void> execute() {
    return repository.logout();
  }
}

class CheckLoginStatusUseCase {
  final AuthRepository repository;
  CheckLoginStatusUseCase(this.repository);

  bool execute() {
    return repository.isLoggedIn();
  }
}

class VerifyOTPUseCase {
  final AuthRepository repository;
  VerifyOTPUseCase(this.repository);

  Future<SimpleStatusEntity> execute(String email, String otp) {
    return repository.verifyOTP(email, otp);
  }
}

class GetCurrentUserIdUseCase {
  final AuthLocalDataSource localDataSource;
  GetCurrentUserIdUseCase(this.localDataSource);

  int execute() {
    final user = localDataSource.getUser();
    return user?.id ?? 0;
  }
}
