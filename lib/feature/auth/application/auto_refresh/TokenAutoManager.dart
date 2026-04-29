import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:lumi_care/feature/auth/data/datasources/auth_local_datasource.dart';
import 'package:lumi_care/feature/auth/domain/repositories/auth_repository.dart';

class TokenAutoManager {
  final AuthLocalDataSource localDataSource;
  final AuthRepository authRepository;

  Timer? _timer;
  bool _isRefreshing = false;

  TokenAutoManager({
    required this.localDataSource,
    required this.authRepository,
  });

  void start() {
    stop();
    debugPrint("TokenAutoManager: Started");
    _checkAndRefresh();
    _timer = Timer.periodic(const Duration(seconds: 30), (timer) async {
      await _checkAndRefresh();
    });
  }

  Future<void> _checkAndRefresh() async {
    if (_isRefreshing) return;

    final isLoggedIn = localDataSource.isLoggedIn;
    if (!isLoggedIn) return;

    final isExpiredSoon = localDataSource.isTokenExpiredSoon();

    if (isExpiredSoon) {
      _isRefreshing = true;
      try {
        await _performRefresh();
      } catch (e) {
        debugPrint("TokenAutoManager: Refresh failed with error: $e");
      } finally {
        _isRefreshing = false;
      }
    }
  }

  Future<void> _performRefresh() async {
    final rfToken = localDataSource.getRefreshToken();
    if (rfToken == null || rfToken.isEmpty) {
      return;
    }

    try {
      await authRepository.refreshToken(rfToken);
      debugPrint("TokenAutoManager: Refresh successful");
    } catch (e) {
      final errorStr = e.toString().toLowerCase();
      if (errorStr.contains("16") ||
          errorStr.contains("unauthenticated") ||
          errorStr.contains("expired")) {
        stop();
      }
      rethrow;
    }
  }

  void stop() {
    _timer?.cancel();
    _timer = null;
    _isRefreshing = false;
  }
}
