import 'package:onesignal_flutter/onesignal_flutter.dart';

class OneSignalService {
  static const String _appId = "2f04629a-7a7a-44af-881a-5257ad8f3bf6";

  static Future<void> init() async {
    try {
      OneSignal.initialize(_appId);
      await OneSignal.Notifications.requestPermission(true);
    } catch (_) {}
  }

  static Future<void> loginUser(String userId) async {
    try {
      await OneSignal.login(userId);
    } catch (_) {}
  }

  static Future<void> logoutUser() async {
    try {
      await OneSignal.logout();
    } catch (_) {}
  }
}
