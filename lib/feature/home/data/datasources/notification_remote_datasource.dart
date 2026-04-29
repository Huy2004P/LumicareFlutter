import 'package:lumi_care/core/network/data/repositories_impl/repositories_impl.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class NotificationRemoteDataSource {
  final AppRepositoryImpl serverRepo;
  NotificationRemoteDataSource(this.serverRepo);
  Future<List<NotificationItemEntity>> getMyNotifications(int userId) {
    return serverRepo.getMyNotifications(userId);
  }

  Future<bool> markAsRead(int notificationId, int userId) {
    return serverRepo.markNotificationAsRead(notificationId, userId);
  }

  Future<bool> markAllAsRead(int userId) {
    return serverRepo.markAllNotificationsAsRead(userId);
  }

  Future<bool> createNotification({
    required int userId,
    required String title,
    required String message,
    required String type,
  }) {
    return serverRepo.createNotification(
      userId: userId,
      title: title,
      message: message,
      type: type,
    );
  }

  Stream<NotificationItemEntity> listenNotificationsRealtime(int userId) {
    return serverRepo.listenNotifications(userId);
  }
}
