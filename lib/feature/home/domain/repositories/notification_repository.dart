import 'package:lumi_care/core/network/domain/entities/entities.dart';

abstract class NotificationRepository {
  Future<List<NotificationItemEntity>> getMyNotifications(int userId);
  Future<bool> markAsRead(int notificationId, int userId);
  Future<bool> markAllAsRead(int userId);
  Future<bool> createNotification({
    required int userId,
    required String title,
    required String message,
    required String type,
  });
  Stream<NotificationItemEntity> listenToNotifications(int userId);
}
