import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDataSource {
  final SharedPreferences prefs;
  AuthLocalDataSource(this.prefs);

  static const String _accessTokenKey = 'ACCESS_TOKEN';
  static const String _refreshTokenKey = 'REFRESH_TOKEN';
  static const String _userKey = 'USER_INFO';

  Future<void> saveAuthData({
    required String access,
    required String refresh,
    required UserInfoEntity user,
  }) async {
    await saveTokens(access: access, refresh: refresh);
    if (user.id != 0) {
      final userMap = {
        'id': user.id,
        'email': user.email,
        'role': user.role,
        'fullName': user.fullName,
        'avatar': user.avatar,
        'phone': user.phone,
        'birthday': user.birthday,
      };
      await prefs.setString(_userKey, jsonEncode(userMap));
      debugPrint("AuthLocalDataSource: Saved user id=${user.id}");
    }
  }

  Future<void> saveTokens({
    required String access,
    required String refresh,
  }) async {
    await prefs.setString(_accessTokenKey, access);
    await prefs.setString(_refreshTokenKey, refresh);
  }

  String? getAccessToken() => prefs.getString(_accessTokenKey);

  String? getRefreshToken() => prefs.getString(_refreshTokenKey);

  UserInfoEntity? getUser() {
    final userStr = prefs.getString(_userKey);

    if (userStr == null || userStr.isEmpty) return null;

    try {
      final Map<String, dynamic> map = jsonDecode(userStr);
      final id = map['id'];

      if (id == null || id == 0) {
        return null;
      }

      return UserInfoEntity(
        id: id,
        email: map['email'] ?? '',
        role: map['role'] ?? '',
        fullName: map['fullName'] ?? '',
        avatar: map['avatar'] ?? '',
        phone: map['phone'] ?? '',
        birthday: map['birthday'] ?? '',
      );
    } catch (e) {
      debugPrint("AuthLocalDataSource: Error decoding user JSON: $e");
      return null;
    }
  }

  Future<void> clear() async {
    await prefs.clear();
  }

  bool isTokenExpiredSoon() {
    final token = getAccessToken();
    if (token == null || token.isEmpty) return false;

    try {
      final isExpired = JwtDecoder.isExpired(token);
      final remaining = JwtDecoder.getRemainingTime(token).inSeconds;
      return isExpired || remaining < 120;
    } catch (e) {
      return false;
    }
  }

  Future<void> clearTokens() async {
    await prefs.remove(_accessTokenKey);
    await prefs.remove(_refreshTokenKey);
  }

  bool get isLoggedIn => prefs.containsKey(_accessTokenKey);

  // --- DEBUG TOOL ---
  void debugCheckAllPrefs() {
    final keys = prefs.getKeys();
    debugPrint("--- [PREFS EXPLORER] ---");
    if (keys.isEmpty) {
      debugPrint("SharedPreferences is empty.");
    } else {
      for (String key in keys) {
        final value = prefs.get(key);
        debugPrint("Key: '$key' | Value: $value");
      }
    }
    debugPrint("------------------------");
  }
}
