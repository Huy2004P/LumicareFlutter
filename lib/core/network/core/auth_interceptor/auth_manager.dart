import 'package:grpc/grpc.dart';
import 'package:lumi_care/core/network/data/models/generated/auth.pbgrpc.dart';
import 'package:lumi_care/feature/auth/data/datasources/auth_local_datasource.dart';

class AuthManager {
  final AuthLocalDataSource localDataSource;
  final ClientChannel channel;

  AuthManager(this.localDataSource, this.channel);

  Future<String?> refreshToken() async {
    try {
      final authClient = AuthServiceClient(channel);
      final refreshRequest = RefreshTokenRequest()
        ..refreshToken = localDataSource.getRefreshToken() ?? "";
      final response = await authClient.refreshToken(refreshRequest);
      await localDataSource.saveTokens(
        access: response.accessToken,
        refresh: response.refreshToken,
      );
      return response.accessToken;
    } catch (e) {
      return null;
    }
  }
}
